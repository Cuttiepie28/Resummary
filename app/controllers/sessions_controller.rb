class SessionsController < ApplicationController
  def new
  end

  def create
    # storing the sessions
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      redirect_to root_path, notice: "Logged In"
      # redirect_to user_posts_path(session[:user_id]), notice: "Logged In"

    else
      flash.now.alert = "Couldn't sign you in. Please check your email and password."
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil

    flash[:notice] = 'Signed out'

    redirect_to root_path, notice: "Signed out"


  end

  def index
    @projects = Project.all
  end
end
