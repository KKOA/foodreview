require 'rails_helper'
feature 'Delete Review' do
  scenario 'Remove assoicate review upon restaurant destruction' do
    visit '/restaurants/index'
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
    review1 =
      {
        comment:  '',
        rating: '4'
      }
    add_review(review1)
    click_on 'View Restaurants'
    within("//tr[id='1']") do
      click_on 'Delete'
    end
    expect(Review.where(restaurant_id: 1).count).to eq 0
  end
  scenario 'wtfRemove assoicate review upon restaurant destruction' do
    visit '/restaurants/index'
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
    review1 =
      {
        comment:  '',
        rating: '4'
      }
    add_review(review1)
    click_on 'Delete'
    expect(Review.where(restaurant_id: 1).count).to eq 0
  end
end
