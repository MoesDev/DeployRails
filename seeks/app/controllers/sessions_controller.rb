class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:email])
  	if user 
  		if user.authenticate(params[:password])
  			session[:user_id] = user.id
  			redirect_to "/users/show"
  		else
  			flash[:errors] = "Password is Incorrect"
  			redirect_to "/sessions/new"
  		end
  	else
  		flash[:errors]="Email not found"
  		redirect_to "/sessions/new"
  	end
  end

  def destroy
  	session.clear
  	redirect_to "/sessions/new"
  end
end
