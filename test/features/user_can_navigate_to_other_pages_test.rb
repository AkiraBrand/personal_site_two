require './test/test_helper'

class LinkTest < CapybaraTestCase
  def test_user_can_go_to_the_about_page
    visit '/'
    click_on "About"

    assert_equal 200, page.status_code
    assert_equal '/about', current_path
    assert page.has_content?("top five things about me")
  end

  def test_user_can_go_to_the_blog_page
    visit '/'
    click_on "Blog"

    assert_equal 200, page.status_code
    assert_equal '/blog', current_path
    assert page.has_content?("welcome to my blog")
  end
end
