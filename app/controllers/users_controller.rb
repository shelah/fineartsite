class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.password_digest=@user.encrypt(params[:user][:password])
    respond_to do |format|
      format.html do
        if @user.save
          session[:user_id] = @user.id
          redirect_to root_url, notice => "Thank you for signing up!"
        else
          render "new"
        end
      end
    end
  end

end
