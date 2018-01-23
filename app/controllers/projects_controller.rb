class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @projects = Project.all
  end

  def new
    @projects = Project.all

    @project = current_user.projects.build
  end

  def create
    @project = current_user.projects.build(project_params)

    if params[:create_and_add]
      @project.save
      redirect_to request.referrer, notice: "Proyecto creado correctamente"
    else
      @project.save
      redirect_to @project, notice: "Proyecto creado correctamente"
    end
  end

  def edit
    @projects = Project.all
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Proyecto actualizado correctamente"
    else
      render 'edit'
    end
  end

  def show
    @projects = Project.all
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:state_event, :name, :commune, :origin_visit, :date_visit, :line, :idi, :visit_id, :visit_booklet, :report_made)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end

# projects
#  t.string  :name
#  t.string  :commune
#  t.string  :origin_visit
#  t.date    :date_visit
#  t.string  :line
#  t.string  :idi
#  t.integer :visit_id
#  t.string  :visit_booklet
#  t.string  :report_made
