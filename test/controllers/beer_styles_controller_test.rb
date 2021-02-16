require "test_helper"

class BeerStylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beer_style = beer_styles(:one)
  end

  test "should get index" do
    get beer_styles_url
    assert_response :success
  end

  test "should get new" do
    get new_beer_style_url
    assert_response :success
  end

  test "should create beer_style" do
    assert_difference('BeerStyle.count') do
      post beer_styles_url, params: { beer_style: { name: @beer_style.name } }
    end

    assert_redirected_to beer_style_url(BeerStyle.last)
  end

  test "should show beer_style" do
    get beer_style_url(@beer_style)
    assert_response :success
  end

  test "should get edit" do
    get edit_beer_style_url(@beer_style)
    assert_response :success
  end

  test "should update beer_style" do
    patch beer_style_url(@beer_style), params: { beer_style: { name: @beer_style.name } }
    assert_redirected_to beer_style_url(@beer_style)
  end

  test "should destroy beer_style" do
    assert_difference('BeerStyle.count', -1) do
      delete beer_style_url(@beer_style)
    end

    assert_redirected_to beer_styles_url
  end
end
