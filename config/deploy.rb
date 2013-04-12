# Your cPanel/SSH login name
set :user , "shelahfi"

# The domain name of the server to deploy to, this can be your domain or the domain of the server.
set :server_name, "75.98.33.134"

# Your svn / git login name
set :scm_username, "shelah"
#set :scm_password, Proc.new { CLI.password_prompt "Git Password: "}

# Your repository type, by default we use subversion.
#set :scm, :subversion
set :scm, :git

# The name of your application, this will also be the folder were your application
# will be deployed to
set :application, "fineartsite"

# the url for your repository
set :repository,  "https://github.com/shelah/fineartsite.git"

###### There is no need to edit anything below this line ######
set :deploy_to, "/home/#{user}/#{application}"
set :use_sudo, false
set :group_writable, false

default_run_options[:pty] = true

role :app, server_name
role :web, server_name
role :db,  server_name, :primary => true

# set the proper permission of the public folder
task :after_update_code, :roles => [:web, :db, :app] do
  run "chmod 755 #{release_path}/public"
  run "chmod 755 #{release_path}/public/dispatch.fcgi"
  run "chmod 755 #{release_path}/public/dispatch.cgi"
end

namespace :deploy do
  desc "cold deploy"
  task :cold do
    update
    fastcgi::create_public_link
    fastcgi::restart
  end

  desc "restart dispatchers"
  task :restart do
    fastcgi::restart
  end

#  desc "precompile css"
#  task :precompile_assets do
#    run "cd /home/#{user}/#{application}/current; bundle exec rake assets:precompile"
#  end

  desc "copy .htaccess to public directory for Passenger"
  task :configure_passenger do
    run "cd /home/#{user}/#{application}/current; cp .htaccess /home/#{user}/#{application}/current/public"
  end

  desc "install nonstandard gems"
  task :install_gems do
    run "cd /home/#{user}/#{application}/current; bundle install --path=/home/#{user}/#{application}/shared/bundle"
  end

  after 'deploy:create_symlink', 'deploy:configure_passenger'
  after 'deploy:configure_passenger', 'deploy:install_gems'
#  after 'deploy:install_gems', 'deploy:precompile_assets'
end

namespace :fastcgi do
  desc "Restart dispatchers"
  task :restart do
    run "killall -9 dispatch.fcgi"
  end

  desc "Create symbolic link"
  task :create_public_link do
    run "cd /home/#{user}; mv public_html public_html_bk; ln -s #{current_path}/public ~/public_html"
  end

end
