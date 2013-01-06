# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fineartsite_session',
  :secret      => '4253eae5d147222ddc155cbe97ecb49e0171f5793943fac8381fb1e23fe50dbb7c38363b4f7c9f94f5df88ec0c683ce259e395d865327ea1574e400ab312a859'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
