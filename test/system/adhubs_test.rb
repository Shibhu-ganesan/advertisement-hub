require "application_system_test_case"

class AdhubsTest < ApplicationSystemTestCase
  setup do
    @adhub = adhubs(:one)
  end

  test "visiting the index" do
    visit adhubs_url
    assert_selector "h1", text: "Adhubs"
  end

  test "creating a Adhub" do
    visit adhubs_url
    click_on "New Adhub"

    fill_in "Description", with: @adhub.description
    fill_in "Title", with: @adhub.title
    click_on "Create Adhub"

    assert_text "Adhub was successfully created"
    click_on "Back"
  end

  test "updating a Adhub" do
    visit adhubs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @adhub.description
    fill_in "Title", with: @adhub.title
    click_on "Update Adhub"

    assert_text "Adhub was successfully updated"
    click_on "Back"
  end

  test "destroying a Adhub" do
    visit adhubs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adhub was successfully destroyed"
  end
end
