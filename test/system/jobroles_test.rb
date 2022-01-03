require "application_system_test_case"

class JobrolesTest < ApplicationSystemTestCase
  setup do
    @jobrole = jobroles(:one)
  end

  test "visiting the index" do
    visit jobroles_url
    assert_selector "h1", text: "Jobroles"
  end

  test "creating a Jobrole" do
    visit jobroles_url
    click_on "New Jobrole"

    fill_in "Company", with: @jobrole.company
    fill_in "Designation", with: @jobrole.designation
    fill_in "Experience", with: @jobrole.experience
    fill_in "Qualification", with: @jobrole.qualification
    fill_in "Salary", with: @jobrole.salary
    click_on "Create Jobrole"

    assert_text "Jobrole was successfully created"
    click_on "Back"
  end

  test "updating a Jobrole" do
    visit jobroles_url
    click_on "Edit", match: :first

    fill_in "Company", with: @jobrole.company
    fill_in "Designation", with: @jobrole.designation
    fill_in "Experience", with: @jobrole.experience
    fill_in "Qualification", with: @jobrole.qualification
    fill_in "Salary", with: @jobrole.salary
    click_on "Update Jobrole"

    assert_text "Jobrole was successfully updated"
    click_on "Back"
  end

  test "destroying a Jobrole" do
    visit jobroles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jobrole was successfully destroyed"
  end
end
