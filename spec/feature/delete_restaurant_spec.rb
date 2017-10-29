require 'rails_helper'
feature 'Delete Restaurants' do
  scenario 'Remove one restaurant from series of restaurant' do
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
      click_on 'View Restaurants'
      restaurant2 =
      {
        name: 'IIL TOSCANO RISTORANTE',
        description: 'Flame grilled Chicken',
        address1: '6-7 station Parade Brighton Road',
        address2: '',
        city:  ' Sutton',
        county:  'Surrey',
        postcode: 'SM2 5AD'
      }
      add_restaurant(restaurant2)
      click_on 'View Restaurants'
      within("//tr[id='1']") do
        expect { click_on 'Delete' }.to change(Restaurant, :count).by(-1)
      end
      expect(page).not_to have_content('nandos')
  end
end
