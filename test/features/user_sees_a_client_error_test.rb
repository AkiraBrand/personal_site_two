require './test/test_helper'

class ErrorTest <CapybaraTestCase

 def test_user_sees_error_when_visiting_nonexistent_page
   visit '/whatever'

   assert page.has_content?("page not found")
   assert_equal 404, page.status_code
 end

end
