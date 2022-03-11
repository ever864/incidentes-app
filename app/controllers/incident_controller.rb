class IncidentController < ApplicationController
  before_action :authenticate_user!, :except=> [:show]

  def index
    @incidents = Incident.where(user_id: current_user.id)
  end
  
  def new
    @incident = Incident.new
  end

  def create
    @incident = Incident.new(incident_params.merge(user_id: current_user.id))
    if @incident.save
      redirect_to @incident
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @incident = Incident.find(params[:id])
    @user = User.find_by(id: @incident.user_id)
  end

  private

  def incident_params
    params.require(:incident).permit(:asunto, :descripcion, :fecha_incidente, :image_incident)
  end

end
