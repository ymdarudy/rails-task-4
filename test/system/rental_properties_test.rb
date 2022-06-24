require "application_system_test_case"

class RentalPropertiesTest < ApplicationSystemTestCase
  setup do
    @rental_property = rental_properties(:one)
  end

  test "visiting the index" do
    visit rental_properties_url
    assert_selector "h1", text: "Rental Properties"
  end

  test "creating a Rental property" do
    visit rental_properties_url
    click_on "New Rental Property"

    fill_in "Address", with: @rental_property.address
    fill_in "Age", with: @rental_property.age
    fill_in "Name", with: @rental_property.name
    fill_in "Note", with: @rental_property.note
    fill_in "Rent", with: @rental_property.rent
    click_on "Create Rental property"

    assert_text "Rental property was successfully created"
    click_on "Back"
  end

  test "updating a Rental property" do
    visit rental_properties_url
    click_on "Edit", match: :first

    fill_in "Address", with: @rental_property.address
    fill_in "Age", with: @rental_property.age
    fill_in "Name", with: @rental_property.name
    fill_in "Note", with: @rental_property.note
    fill_in "Rent", with: @rental_property.rent
    click_on "Update Rental property"

    assert_text "Rental property was successfully updated"
    click_on "Back"
  end

  test "destroying a Rental property" do
    visit rental_properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rental property was successfully destroyed"
  end
end
