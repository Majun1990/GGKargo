class Inquiry < ApplicationRecord
  after_create :send_inquiry_email
  
  def send_inquiry_email
    NotificationMailer.inquiry_added(@inquiry).deliver_now
  end
end
