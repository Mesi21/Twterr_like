require "application_system_test_case"

class TwtsTest < ApplicationSystemTestCase
  setup do
    @twt = twts(:one)
  end

  test "visiting the index" do
    visit twts_url
    assert_selector "h1", text: "Twts"
  end

  test "creating a Twt" do
    visit twts_url
    click_on "New Twt"

    fill_in "Twt", with: @twt.twt
    click_on "Create Twt"

    assert_text "Twt was successfully created"
    click_on "Back"
  end

  test "updating a Twt" do
    visit twts_url
    click_on "Edit", match: :first

    fill_in "Twt", with: @twt.twt
    click_on "Update Twt"

    assert_text "Twt was successfully updated"
    click_on "Back"
  end

  test "destroying a Twt" do
    visit twts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Twt was successfully destroyed"
  end
end
