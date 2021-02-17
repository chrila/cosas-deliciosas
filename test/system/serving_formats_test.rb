require "application_system_test_case"

class ServingFormatsTest < ApplicationSystemTestCase
  setup do
    @serving_format = serving_formats(:one)
  end

  test "visiting the index" do
    visit serving_formats_url
    assert_selector "h1", text: "Serving Formats"
  end

  test "creating a Serving format" do
    visit serving_formats_url
    click_on "New Serving Format"

    fill_in "Name", with: @serving_format.name
    click_on "Create Serving format"

    assert_text "Serving format was successfully created"
    click_on "Back"
  end

  test "updating a Serving format" do
    visit serving_formats_url
    click_on "Edit", match: :first

    fill_in "Name", with: @serving_format.name
    click_on "Update Serving format"

    assert_text "Serving format was successfully updated"
    click_on "Back"
  end

  test "destroying a Serving format" do
    visit serving_formats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Serving format was successfully destroyed"
  end
end
