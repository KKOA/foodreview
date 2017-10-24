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
    add_restaurant(restaurant1[:name],  restaurant1[:description],
    restaurant1[:address1], restaurant1[:address2],
    restaurant1[:city], restaurant1[:county],restaurant1[:postcode])
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
    add_restaurant(restaurant1[:name], restaurant1[:description],
    restaurant1[:address1], restaurant1[:address2],
    restaurant1[:city], restaurant1[:county], restaurant1[:postcode])
    #p page.body
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
    add_restaurant(restaurant2[:name], restaurant2[:description],
    restaurant2[:address1], restaurant2[:address2],
    restaurant2[:city], restaurant2[:county], restaurant2[:postcode])
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
    add_restaurant(restaurant1[:name], restaurant1[:description],
    restaurant1[:address1], restaurant1[:address2],
    restaurant1[:city], restaurant1[:county], restaurant1[:postcode])
    #p page.body
    within(:css, '#error_explanation')do
      expect(page).to have_content('Cannot Save Restuarant')
    end
  end
end
