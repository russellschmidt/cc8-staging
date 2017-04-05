class ProjectsController < ApplicationController
  layout "administration", only: [:index, :new, :edit]

  before_filter :find_project, only: [:show, :edit, :update]

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
      redirect_to project_path(@project)
    else
      flash[:error] = "Error saving the project to our database"
      redirect_to projects_path
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      flash[:error] = "Error updating the project in our database"
      redirect_to projects_path
    end
  end

  private
  # start private
    def project_params
      params.require(:project).permit(:name, :blurb, :description, :partner_id, :slug, :videoUrl,
          :science, :overview_headline, :science_headline, :news_headline, :volunteer_headline)
    end

    def find_partner(project)
      Partner.find(project.partner_id)
    end

    def find_project
      @project = Project.friendly.find(params[:id])
    end
  # end private
end
