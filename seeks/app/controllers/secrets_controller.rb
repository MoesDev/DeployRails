class SecretsController < ApplicationController
  def secrets
  	@secrets = Secret.all
  end

  def create
  	@secret = User.find(session[:user_id]).secrets.create(secret: params[:secret])
  	if @secret.errors.any?
  		flash[:errors]= @secret.errors.full_messages
  		redirect_to "/users/show"
  	else
  		redirect_to '/secrets'
  	end
  end
  def destroy
  	Secret.find(params[:id]).destroy
  	redirect_to "/secrets"
  end

  def like
  	Like.create(user: User.find(session[:user_id]), secret: Secret.find(params[:id]))
  	redirect_to "/secrets"
  end

  def unlike
  	Like.find_by(user: User.find(session[:user_id]), secret: Secret.find(params[:id])).destroy
  	redirect_to "/secrets"
  end
  
end
