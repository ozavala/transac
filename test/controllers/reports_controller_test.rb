require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get gl_chart_of_accounts" do
    get reports_gl_chart_of_accounts_url
    assert_response :success
  end

end
