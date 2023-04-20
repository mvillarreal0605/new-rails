# Preview all emails at http://localhost:3000/rails/mailers/inquiry_mailer
class InquiryMailerPreview < ActionMailer::Preview
  def inquiry
     Inquiry.new({
      first_name: 'Larry',
      last_name: 'David',
      interest: Inquiry.interests[:recruiter],
      email: 'mvillarreal0605@gmail.com',
      message: 'sales are dope'
    })
  end

  def send_confirmation
    InquiryMailer.send_confirmation(inquiry)
  end
end
