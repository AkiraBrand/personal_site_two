require './test/test_helper'

class BlogTest < CapybaraTestCase

  def test_user_sees_welcome_message
    visit '/blog'

    assert page.has_content?("welcome to my blog")
    assert_equal 200, page.status_code
  end
  
end
