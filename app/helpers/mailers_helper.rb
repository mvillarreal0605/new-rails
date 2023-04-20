module MailersHelper
  def email_image_tag(image, **options)
    attachments.inline[image] = File.read("#{Rails.root}/app/assets/images/#{image}")
    image_tag attachments[image].url, **options
  end
end
