class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials[:gmail][:api_email]
  layout 'mailer'
end
