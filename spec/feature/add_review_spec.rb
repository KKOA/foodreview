require 'rails_helper'

feature 'Add Review' do
  # include CapybaraHelper
  scenario 'Leave Review on property' do
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
    review1 =
    {
      comment:  '',
      rating: '4'
    }
    add_review(review1)
    expect(page).to have_content(review1[:comment])
    expect(page).to have_content(review1[:rating])
  end
end
