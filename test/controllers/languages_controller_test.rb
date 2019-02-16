require 'test_helper'

class LanguageControllerTest < ActionDispatch::IntegrationTest
  test "should get set_language" do
    get language_set_language_url
    assert_response :success
  end

end
