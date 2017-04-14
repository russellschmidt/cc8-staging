class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :admin_list, except: [:show]

  layout "administration", only: [:index, :new, :edit]

  before_filter :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
    @partner = find_partner(@project)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    if @project.save
      redirect_to edit_project_path(@project, partner_param: @project.partner_id)
    else
      flash[:error] = "Error saving the project to our database"
      redirect_to projects_path
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to edit_project_path(@project, partner_param: @project.partner_id)
    else
      flash[:error] = "Error updating the project in our database"
      redirect_to projects_path
    end
  end

  def destroy
    if @project.destroy
      flash[:notice] = "Deletion successful. Also deleted associated Campaigns."
      redirect_to projects_path
    else
      flash[:error] = "{@project.name} did not delete"
      redirect_to project_path(@project)
    end
  end

  private
  # start private
    def project_params
      params.require(:project).permit(:name, :blurb, :description, :partner_id, :slug, :videoUrl,
          :science, :overview_headline, :science_headline, :news_headline, :volunteer_headline,
          :logo, :hero_image, :small_image)
    end

    def find_partner(project)
      Partner.find(project.partner_id)
    end

    def find_project
      @project = Project.friendly.find(params[:id])
    end

    def admin_list
      unless user_signed_in? && current_user.admin?
        redirect_to admin_index_path
      end
    end
  # end private
end
