require 'rails_helper'

feature 'Edit Restaurants' do
  # include CapybaraHelper
  scenario 'Input Valid Entry' do
    visit '/restaurants/index'
    restaurant1 = {
      name: 'Nando',
      description: 'Chicken',
      address1: '5 Lomdon Close',
      address2: 'Sparclls',
      city: 'Swindon',
      county: 'Wiltshire',
      postcode: 'SN6 5FF',
      image: 'download.jpeg'
    }
    add_restaurant(restaurant1)
    click_on 'View Restaurants'
    restaurant2 =
    {
      name: 'Na452',
      description: 'Chic62',
      address1: '5 Lomdon Close',
      address2: 'Sparclls',
      city: 'Swindon',
      county: 'Wiltshire',
      postcode: 'SN6 5FF',
      image: 'sample/download.jpeg'
    }
    edit_restaurant(
      restaurant2[:name],
      restaurant2[:description],
      restaurant2[:address1],
      restaurant2[:address2],
      restaurant2[:city],
      restaurant2[:county],
      restaurant2[:postcode],
      restaurant2[:image]
    )

    expect(page).not_to have_content(restaurant1[:name])
    expect(page).to have_content(restaurant2[:name])
    click_on 'View Restaurants'
    expect(page).not_to have_content(restaurant1[:name])
    expect(page).to have_content(restaurant2[:name])
  end
  scenario 'Input Invalid Entry' do
    visit '/restaurants/index'
    restaurant1 =
    {
      name: 'Nando',
      description: 'Chicken',
      address1: '5 Lomdon Close',
      address2: 'Sparclls',
      city: 'Swindon',
      county: 'Wiltshire',
      postcode: 'SN6 5FF',
      image: 'download.jpeg'
    }
    add_restaurant(restaurant1)
    click_on 'View Restaurants'
    restaurant2 =
    {
      name: '',
      description: '',
      address1: '5 Lomdon Close',
      address2: 'Sparclls',
      city:  'Swindon',
      county:  'Wiltshire',
      postcode: 'SN6 5FF',
      image: 'download.jpeg'
    }
    edit_restaurant(
      restaurant2[:name],
      restaurant2[:description],
      restaurant2[:address1],
      restaurant2[:address2],
      restaurant2[:city],
      restaurant2[:county],
      restaurant2[:postcode]
    )
    expect(page).not_to have_content(restaurant1[:name])
    expect(page).to have_content('Cannot Save Restuarant')
  end
end
