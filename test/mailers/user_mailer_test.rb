require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "birthday_wish" do
    mail = UserMailer.birthday_wish
    assert_equal "Birthday wish", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
