class ObservationsController < ApplicationController
  before_action :find_observation, only: [:show]

  def new
    @observation = Observation.new
  end

  def create
    @observation = Observation.new(observation_params)

    if params[:create_and_add]
      @observation.save
      redirect_to request.referrer, notice: "Observación creada correctamente"
    else
      @observation.save
      redirect_to @observation, notice: "Observación creada correctamente"
    end
  end

  def show
  end

  private

  def observation_params
    params.require(:observation).permit!
  end

  def find_observation
    @observation = Observation.find(params[:id])
  end
end
