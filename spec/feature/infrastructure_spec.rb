require 'rails_helper'
feature 'Test' do
  # include CapybaraHelper
  scenario 'Add Restuarant Link' do
    visit '/restaurants/index'
    click_on 'Add Restaurant'
    expect(page).to have_current_path '/restaurants/new'
  end
  scenario 'Add Restuarant Cancel Link' do
    visit '/restaurants/index'
    click_on 'Add Restaurant'
    click_on 'Back to Restaurants'
    expect(page).to have_current_path '/restaurants'
  end
  scenario 'Edit Restuarant Link' do
    visit '/restaurants/index'
    restaurant1 =
      {
        name: 'Nando',
        description: 'Chicken',
        address1: '5 Lomdon Close',
        address2: 'Sparclls',
        city:  'Swindon',
        county:  'Wiltshire',
        postcode: 'SN6 5FF'
      }
    add_restaurant(restaurant1)
    click_on 'Edit'
    expect(page).to have_current_path '/restaurants/1/edit'
  end
  scenario 'Edit Restuarant CancelLink' do
    visit '/restaurants/index'
    restaurant1 =
      {
        name: 'Nando',
        description: 'Chicken',
        address1: '5 Lomdon Close',
        address2: 'Sparclls',
        city:  'Swindon',
        county:  'Wiltshire',
        postcode: 'SN6 5FF'
      }
    add_restaurant(restaurant1)
    click_on 'Edit'
    click_on 'Back to Restaurants'
    expect(page).to have_current_path '/restaurants'
  end
end
