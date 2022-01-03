require "application_system_test_case"

class ApplicationsTest < ApplicationSystemTestCase
  setup do
    @application = applications(:one)
  end

  test "visiting the index" do
    visit applications_url
    assert_selector "h1", text: "Applications"
  end

  test "creating a Application" do
    visit applications_url
    click_on "New Application"

    fill_in "City", with: @application.city
    fill_in "Current", with: @application.current
    fill_in "Email", with: @application.email
    fill_in "Enter", with: @application.enter
    fill_in "Experience", with: @application.experience
    fill_in "Fullname", with: @application.fullname
    fill_in "Mobile", with: @application.mobile
    fill_in "No", with: @application.no
    fill_in "Qualification", with: @application.qualification
    fill_in "Your", with: @application.your
    click_on "Create Application"

    assert_text "Application was successfully created"
    click_on "Back"
  end

  test "updating a Application" do
    visit applications_url
    click_on "Edit", match: :first

    fill_in "City", with: @application.city
    fill_in "Current", with: @application.current
    fill_in "Email", with: @application.email
    fill_in "Enter", with: @application.enter
    fill_in "Experience", with: @application.experience
    fill_in "Fullname", with: @application.fullname
    fill_in "Mobile", with: @application.mobile
    fill_in "No", with: @application.no
    fill_in "Qualification", with: @application.qualification
    fill_in "Your", with: @application.your
    click_on "Update Application"

    assert_text "Application was successfully updated"
    click_on "Back"
  end

  test "destroying a Application" do
    visit applications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Application was successfully destroyed"
  end
end
