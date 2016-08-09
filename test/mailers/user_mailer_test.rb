# frozen_string_literal: true

require 'test_helper'

# Tests to assure that contact emails can be sent.
class UserMailerTest < ActionMailer::TestCase
  test 'contact' do
    mail = UserMailer.contact('Name', 'from@example.com', 'Body of Message')
    assert_equal 'Name - Website Message', mail.subject
    assert_equal [ENV['support_email']], mail.to
    assert_equal ['from@example.com'], mail.reply_to
    assert_match('Body of Message', mail.body.encoded)
  end
end
