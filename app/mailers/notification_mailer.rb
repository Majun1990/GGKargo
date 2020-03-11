class NotificationMailer < ApplicationMailer
  default from: "no-reply@ggkargoapp.com"

  def inquiry_added(inquiry)
    @inquiry = inquiry

    mail(to: "GGKargoLLC@gmail.com",
      subject: "new inquiry")
  end
end
