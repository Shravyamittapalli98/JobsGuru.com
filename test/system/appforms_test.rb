require "application_system_test_case"

class AppformsTest < ApplicationSystemTestCase
  setup do
    @appform = appforms(:one)
  end

  test "visiting the index" do
    visit appforms_url
    assert_selector "h1", text: "Appforms"
  end

  test "creating a Appform" do
    visit appforms_url
    click_on "New Appform"

    fill_in "City", with: @appform.city
    fill_in "Current", with: @appform.current
    fill_in "Enteryouremail", with: @appform.enteryouremail
    fill_in "Experience", with: @appform.experience
    fill_in "Fullname", with: @appform.fullname
    fill_in "Mobileno", with: @appform.mobileNo
    fill_in "Qualification", with: @appform.qualification
    click_on "Create Appform"

    assert_text "Appform was successfully created"
    click_on "Back"
  end

  test "updating a Appform" do
    visit appforms_url
    click_on "Edit", match: :first

    fill_in "City", with: @appform.city
    fill_in "Current", with: @appform.current
    fill_in "Enteryouremail", with: @appform.enteryouremail
    fill_in "Experience", with: @appform.experience
    fill_in "Fullname", with: @appform.fullname
    fill_in "Mobileno", with: @appform.mobileNo
    fill_in "Qualification", with: @appform.qualification
    click_on "Update Appform"

    assert_text "Appform was successfully updated"
    click_on "Back"
  end

  test "destroying a Appform" do
    visit appforms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appform was successfully destroyed"
  end
end
