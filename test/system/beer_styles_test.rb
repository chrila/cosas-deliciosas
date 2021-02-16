require "application_system_test_case"

class BeerStylesTest < ApplicationSystemTestCase
  setup do
    @beer_style = beer_styles(:one)
  end

  test "visiting the index" do
    visit beer_styles_url
    assert_selector "h1", text: "Beer Styles"
  end

  test "creating a Beer style" do
    visit beer_styles_url
    click_on "New Beer Style"

    fill_in "Name", with: @beer_style.name
    click_on "Create Beer style"

    assert_text "Beer style was successfully created"
    click_on "Back"
  end

  test "updating a Beer style" do
    visit beer_styles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @beer_style.name
    click_on "Update Beer style"

    assert_text "Beer style was successfully updated"
    click_on "Back"
  end

  test "destroying a Beer style" do
    visit beer_styles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beer style was successfully destroyed"
  end
end
