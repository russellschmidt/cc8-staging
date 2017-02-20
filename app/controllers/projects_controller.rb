class ProjectsController < ApplicationController

  def show
    @project = Project.find(params[:id])
    @partner = find_partner(@project)
  end

  private
    def project_params
      params.require(:project).permit(:name, :blurb, :description, :partner_id)
    end

    def find_partner(project)
      Partner.find(project.partner_id)
    end
end
