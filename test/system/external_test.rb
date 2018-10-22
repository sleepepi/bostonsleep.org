# frozen_string_literal: true

require "application_system_test_case"

# System tests for external pages.
class ExternalTest < ApplicationSystemTestCase
  test "visit landing page" do
    visit root_url
    screenshot("visit-landing-page")
    assert_selector "h1", text: "Brigham Health\nSleep Reading Center"
  end

  test "visit about page" do
    visit about_url
    screenshot("visit-about-page")
    assert_selector "h1", text: "Brigham Health Sleep Reading Center"
  end

  test "visit services page" do
    visit services_url
    screenshot("visit-services-page")
    scroll_down
    screenshot("visit-services-page")
    scroll_down
    screenshot("visit-services-page")
    assert_selector "h1", text: "Brigham Health Sleep Reading Center"
  end

  test "visit facility page" do
    visit facility_url
    screenshot("visit-facility-page")
    scroll_down
    screenshot("visit-facility-page")
    assert_selector "h1", text: "Brigham Health Sleep Reading Center"
  end

  test "visit research page" do
    visit research_url
    screenshot("visit-research-page")
    scroll_down
    screenshot("visit-research-page")
    scroll_down
    screenshot("visit-research-page")
    scroll_down
    screenshot("visit-research-page")
    assert_selector "h1", text: "Brigham Health Sleep Reading Center"
  end

  test "visit personnel page" do
    visit personnel_url
    screenshot("visit-personnel-page")
    assert_selector "h1", text: "Brigham Health Sleep Reading Center"
  end

  test "visit contact page" do
    visit contact_url
    screenshot("visit-contact-page")
    assert_selector "h1", text: "Brigham Health Sleep Reading Center"
    fill_in "name", with: "John Smith"
    fill_in "email", with: "jsmith@example.com"
    fill_in "comments", with: "I'm interested in working with your group."
    screenshot("visit-contact-page")
    click_form_submit
    screenshot("visit-contact-page")
  end
end
