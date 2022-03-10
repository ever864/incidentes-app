class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.post_created.subject
  #
  def post_created
    @user = params[:user]
    @incident = params[:incident]

    mail(
      from: @user.email, 
      cc: User.all.pluck(:email),
      subject: "Nueva incidencia de usuario",
      to: "casos@gojom.com",
    )
  end
end
