require "application_system_test_case"

class JoblocationsTest < ApplicationSystemTestCase
  setup do
    @joblocation = joblocations(:one)
  end

  test "visiting the index" do
    visit joblocations_url
    assert_selector "h1", text: "Joblocations"
  end

  test "creating a Joblocation" do
    visit joblocations_url
    click_on "New Joblocation"

    fill_in "Company", with: @joblocation.company
    fill_in "Designation", with: @joblocation.designation
    fill_in "Experience", with: @joblocation.experience
    fill_in "Qualification", with: @joblocation.qualification
    fill_in "Salary", with: @joblocation.salary
    click_on "Create Joblocation"

    assert_text "Joblocation was successfully created"
    click_on "Back"
  end

  test "updating a Joblocation" do
    visit joblocations_url
    click_on "Edit", match: :first

    fill_in "Company", with: @joblocation.company
    fill_in "Designation", with: @joblocation.designation
    fill_in "Experience", with: @joblocation.experience
    fill_in "Qualification", with: @joblocation.qualification
    fill_in "Salary", with: @joblocation.salary
    click_on "Update Joblocation"

    assert_text "Joblocation was successfully updated"
    click_on "Back"
  end

  test "destroying a Joblocation" do
    visit joblocations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Joblocation was successfully destroyed"
  end
end
