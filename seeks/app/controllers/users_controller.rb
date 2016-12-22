class UsersController < ApplicationController
  def new
  end

  def create_user
  	@user = User.create(user_params)
  	if @user.errors.any?
  		flash[:errors]= @user.errors.full_messages
  		redirect_to "/users/new"
  	else
  		session[:user_id]=@user.id
  		puts "************************"
  		puts session[:user_id]
  		redirect_to "/users/show"
  	end
  end

  def show
  	@user = User.find(session[:user_id])
  	@my_secrets = Secret.where(user: @user)
  	@liked_secrets = Like.where(user: @user)
  end

  private

  def user_params
  	params.require(:user).permit(:email,:name,:password,:password_confirmation)
  end
end
