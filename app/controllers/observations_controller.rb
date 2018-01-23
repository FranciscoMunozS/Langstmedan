class ObservationsController < ApplicationController
  before_action :find_observation, only: [:show, :edit, :update]
  before_action :authenticate_user!

  def new
    @observation = Observation.new

    @projects = Project.all
  end

  def create
    @observation = Observation.new(observation_params)

    if params[:create_and_add]
      @observation.save
      redirect_to request.referrer, notice: "Observación creada correctamente"
    else
      @observation.save
      redirect_to root_path, notice: "Observación creada correctamente"
    end
  end

  def show
    @projects = Project.all
  end

  def edit
    @projects = Project.all
  end

  def update
    if @observation.update(observation_params)
      redirect_to root_path, notice: "Observación actualizada correctamente"
    else
      render 'edit'
    end
  end

  private

  def observation_params
    params.require(:observation).permit!
  end

  def find_observation
    @observation = Observation.find(params[:id])
  end
end
