class InquiryMailer < ApplicationMailer
  # def initialize(inquiry:)
  #   @inquiry = inquiry
  # end

  def send_confirmation(inquiry)
    mail(to: inquiry.email, from: 'hello@new-rails.com', subject: 'Hello, from New Rails application')
  end

  def receive_notification(inquiry)
    mail(to: 'mvilla.uy.com', from: 'notifications@new-rails.com', subject: 'New Inquiry for New Rails')
  end
end
