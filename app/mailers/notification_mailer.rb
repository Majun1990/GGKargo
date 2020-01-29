class NotificationMailer < ApplicationMailer
  default from: "no-reply@ggkargoapp.com"

  def inquiry_added
    mail(to: "andre@ggkargo.com",
      subject: "new inquiry")
  end
end
