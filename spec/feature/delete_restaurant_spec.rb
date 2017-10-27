feature 'Edit Restaurants' do
  scenario'Delete restaurant' do
      visit '/restaurants/index'
      restaurant1 =
      {
        :name =>'Nando',
        :description => 'Chicken',
        :address1 =>'5 Lomdon Close',
        :address2 =>'Sparclls',
        :city => 'Swindon',
        :county => 'Wiltshire',
        :postcode =>'SN6 5FF'
      }
      add_restaurant(restaurant1[:name],restaurant1[:description],
      restaurant1[:address1],restaurant1[:address2],
      restaurant1[:city],restaurant1[:county],restaurant1[:postcode])
      click_on 'View Restaurants'
      restaurant2 =
      {
        :name =>'Na452',
        :description => 'Chic62',
        :address1 =>'5 Lomdon Close',
        :address2 =>'Sparclls',
        :city => 'Swindon',
        :county => 'Wiltshire',
        :postcode =>'SN6 5FF'
      }
      add_restaurant(restaurant2[:name],restaurant2[:description],
      restaurant2[:address1],restaurant2[:address2],
      restaurant2[:city],restaurant2[:county],restaurant2[:postcode])
      click_on 'View Restaurants'
      within(:css,"//tr[id='1']") do
        expect { click_on 'Destroy' }.to change(Restaurant, :count).by(-1)
        expect(page).not_to have_content('nandos')
      end
  end

end
