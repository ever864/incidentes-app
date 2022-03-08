class IncidentController < ApplicationController
  def index
    @incidents = Incident.where(user_id: current_user.id)
  end
  
  def new
    @incident = Incident.new
  end

  def create
    @incident = Incident.new(form_params.merge(user_id: current_user.id))
    if @incident.save
      # PostMailer se usará para la configuración del envio de email
      # PostMailer.with(user: current_user, form: @incident).post_created.deliver_later
      redirect_to @form
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @incident = Incident.find(params[:id])
    @user = User.find_by(id: @incident.user_id)
  end

  private

  def form_params
    params.require(:incident).permit(:asunto, :descripcion, :fecha_incidente)
  end

end
