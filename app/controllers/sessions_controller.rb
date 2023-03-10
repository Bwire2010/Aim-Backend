class SessionsController < ApplicationController

    # skip_before_action :authorize, only: :create 
    # skip_before_action :authorize, only: :destroy
  
    # everthing pertaining to login
    def create
      user = User.find_by(username: params[:username])
      # byebug
      if user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user, status: :created
      else
        render json: { error: { login: 'Invalid Username or password' } }, status: :unauthorized
      end
    end

    
  # everthing pertaining to logout
    def destroy
      session.delete :user_id
      head :no_content
    end
end
