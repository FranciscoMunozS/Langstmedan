class MeetingsController < ApplicationController
  before_action :find_meeting, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @projects = Project.all

    @meetings = Meeting.all
  end

  def new
    @projects = Project.all

    @meeting = current_user.meetings.build
  end

  def create

    @meeting = current_user.meetings.build(meeting_params)

    if params[:create_and_add]
      @meeting.save
      redirect_to request.referrer, notice: "Reunión creada correctamente"
    else
      @meeting.save
      redirect_to @meeting, notice: "Reunión creada correctamente"
    end
  end

  def show
    @projects = Project.all
  end

  def edit
    @projects = Project.all
  end

  def update
    if @meeting.update(meeting_params)
      redirect_to @meeting, notice: "Reunión actualizada correctamente"
    else
      render 'edit'
    end
  end

  def destroy
    @meeting.destroy
    redirect_to meeting_path
  end

  private

  def meeting_params
    params.require(:meeting).permit(:commune, :observation, :observation_date, :compliance_date, :meet)
  end

  def find_meeting
    @meeting = Meeting.find(params[:id])
  end
end
