require 'test_helper'

class FlatMailerTest < ActionMailer::TestCase
  test "published" do
    mail = FlatMailer.published
    assert_equal "Published", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
