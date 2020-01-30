class NotificationMailer < ApplicationMailer
  default from: "no-reply@ggkargoapp.com"

  def inquiry_added(inquiry)
    @inquiry = inquiry
    
    mail(to: "webmajunvanderbilt@gmail.com",
      subject: "new inquiry")
  end
end
