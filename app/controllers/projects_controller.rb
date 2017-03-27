class ProjectsController < ApplicationController

  def show
    @project = Project.friendly.find(params[:id])
    @partner = find_partner(@project)
  end

  private
    def project_params
      params.require(:project).permit(:name, :blurb, :description, :partner_id, :slug, :videoUrl)
    end

    def find_partner(project)
      Partner.find(project.partner_id)
    end
end
