require "test_helper"

class ServingFormatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @serving_format = serving_formats(:one)
  end

  test "should get index" do
    get serving_formats_url
    assert_response :success
  end

  test "should get new" do
    get new_serving_format_url
    assert_response :success
  end

  test "should create serving_format" do
    assert_difference('ServingFormat.count') do
      post serving_formats_url, params: { serving_format: { name: @serving_format.name } }
    end

    assert_redirected_to serving_format_url(ServingFormat.last)
  end

  test "should show serving_format" do
    get serving_format_url(@serving_format)
    assert_response :success
  end

  test "should get edit" do
    get edit_serving_format_url(@serving_format)
    assert_response :success
  end

  test "should update serving_format" do
    patch serving_format_url(@serving_format), params: { serving_format: { name: @serving_format.name } }
    assert_redirected_to serving_format_url(@serving_format)
  end

  test "should destroy serving_format" do
    assert_difference('ServingFormat.count', -1) do
      delete serving_format_url(@serving_format)
    end

    assert_redirected_to serving_formats_url
  end
end
