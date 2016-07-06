# frozen_string_literal: true

# Preview all emails at /rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  # Preview this email at /rails/mailers/user_mailer/contact
  def contact
    UserMailer.contact
  end
end
