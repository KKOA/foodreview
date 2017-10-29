require 'rails_helper'

feature 'Add Restaurants' do
  # include CapybaraHelper
  scenario 'No restaurants exist' do
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
    expect(page).to have_content(restaurant1[:name])
    expect(page).to have_content(restaurant1[:description])
  end
  scenario 'Restaurants exist' do
    visit '/restaurants'
    restaurant1 =
      {
        name: 'Nando',
        description: 'Chicken',
        address1: '5 Lomdon Close',
        address2: 'Sparclls',
        city: 'Swindon',
        county: 'Wiltshire',
        postcode: 'SN6 5FF'
      }
    add_restaurant(restaurant1)
    click_on('View Restaurants')
    restaurant2 =
      {
        name: 'Lee Chinese',
        description: 'Chinese',
        address1: '10 Lomdon Close',
        address2: 'Sparclls',
        city: 'Swindon',
        county: 'Wiltshire',
        postcode: 'SN3 5FF'
      }
    add_restaurant(restaurant2)
    click_on('View Restaurants')
    expect(page).to have_content(restaurant1[:name])
    expect(page).to have_content(restaurant2[:name])
    expect(page).not_to have_content 'No restaurants avaliable'
  end
  scenario 'Invalid Restaurants Details' do
    visit '/restaurants'
    restaurant1 =
      {
        name: '',
        description: '',
        address1: '',
        address2: '',
        city: '',
        county: '',
        postcode: ''
      }
    add_restaurant(restaurant1)
    within(:css, '#error_explanation') do
      expect(page).to have_content('Cannot Save Restaurant')
    end
  end
end
