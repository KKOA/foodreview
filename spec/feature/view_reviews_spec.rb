require 'rails_helper'
feature 'View Review' do
  scenario 'No existing reviews' do
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
    within("//div[class='reviews']") do
      expect(page).to have_content('No reviews avaliable for this restaurant')
    end
  end
end
