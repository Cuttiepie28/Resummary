class ResumeController < ApplicationController
  before_action :authenticate_user, except: [:index,:show]

  # def index
  #   @user = User.all
  #   @projects = Project.all
  #   @collaborations = Collaboration.all
  # end

  def show
    @user = User.find_by(id:current_user.id)
    @projects = Project.all
    @collaborations = Collaboration.all
  end

  # def edit
  # end
  #
  # def destroy
  # end
end
