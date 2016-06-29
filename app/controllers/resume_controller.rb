class ResumeController < ApplicationController

  def show
    @user = User.find_by(id:current_user.id)
    @projects = Project.all
    @collaborations = Collaboration.all
  end
  def display
    @user = User.find(params[:id])
    @projects = Project.all
    @collaborations = Collaboration.all
  end
def index
  @users = User.all
  @projects = Project.all
  @collaborations = Collaboration.all
end

end
