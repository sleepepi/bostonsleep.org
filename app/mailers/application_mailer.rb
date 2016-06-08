# frozen_string_literal: true

# Generic mailer class defines layout and from email address
class ApplicationMailer < ActionMailer::Base
  default from: "Boston Sleep <#{ActionMailer::Base.smtp_settings[:email]}>"
  layout 'mailer'
end
