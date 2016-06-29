require 'test_helper'

class ResumeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resume_index_url
    assert_response :success
  end

  test "should get show" do
    get resume_show_url
    assert_response :success
  end

  test "should get edit" do
    get resume_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get resume_destroy_url
    assert_response :success
  end

end
