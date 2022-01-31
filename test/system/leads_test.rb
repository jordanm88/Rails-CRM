require "application_system_test_case"

class LeadsTest < ApplicationSystemTestCase
  setup do
    @lead = leads(:one)
  end

  test "visiting the index" do
    visit leads_url
    assert_selector "h1", text: "Leads"
  end

  test "should create lead" do
    visit leads_url
    click_on "New lead"

    fill_in "Clients name", with: @lead.clients_name
    fill_in "Income", with: @lead.income
    fill_in "Notes", with: @lead.notes
    fill_in "Premium", with: @lead.premium
    fill_in "Product", with: @lead.product
    fill_in "Renewal date", with: @lead.renewal_date
    fill_in "Source", with: @lead.source
    fill_in "Underwriter", with: @lead.underwriter
    click_on "Create Lead"

    assert_text "Lead was successfully created"
    click_on "Back"
  end

  test "should update Lead" do
    visit lead_url(@lead)
    click_on "Edit this lead", match: :first

    fill_in "Clients name", with: @lead.clients_name
    fill_in "Income", with: @lead.income
    fill_in "Notes", with: @lead.notes
    fill_in "Premium", with: @lead.premium
    fill_in "Product", with: @lead.product
    fill_in "Renewal date", with: @lead.renewal_date
    fill_in "Source", with: @lead.source
    fill_in "Underwriter", with: @lead.underwriter
    click_on "Update Lead"

    assert_text "Lead was successfully updated"
    click_on "Back"
  end

  test "should destroy Lead" do
    visit lead_url(@lead)
    click_on "Destroy this lead", match: :first

    assert_text "Lead was successfully destroyed"
  end
end
