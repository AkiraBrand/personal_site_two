require './test/test_helper'

class AboutTest < CapybaraTestCase

 def test_user_sees_basic_about_information
   visit '/about'

   assert page.has_content? ("top five things about me")
   assert_equal 200, page.status_code
 end

end
