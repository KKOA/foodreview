require 'rails_helper'

feature 'Add Restaurants' do
  # include CapybaraHelper
  scenario 'No restaurants exist' do
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
    click_link 'Add Restaurant'
    fill_in('restaurant[name]', :with => restaurant1[:name])
    fill_in('restaurant[description]', :with => restaurant1[:description])
    fill_in('restaurant[address1]', :with => restaurant1[:address1])
    fill_in('restaurant[address2]', :with => restaurant1[:address2])
    fill_in('restaurant[city]', :with => restaurant1[:city])
    fill_in('restaurant[county]', :with => restaurant1[:county])
    fill_in('restaurant[postcode]', :with => restaurant1[:postcode])
    click_on('Save Restaurant')
    # add_restaurant(restaurant1[:name],restaurant1[:description],
    # restaurant1[:address1],restaurant1[:address2],
    # restaurant1[:city],restaurant1[:county],restaurant1[:postcode])
    expect(page).to have_content(name)
    expect(page).to have_content(description)
  end
  # scenario 'Restaurants exist' do
  #   visit '/restaurants'
  #   restaurant1 =
  #   {
  #     :name =>'Nando',
  #     :description => 'Chicken',
  #     :address1 =>'5 Lomdon Close',
  #     :address2 =>'Sparclls',
  #     :city => 'Swindon',
  #     :county => 'Wiltshire',
  #     :postcode =>'SN6 5FF'
  #   }
  #   add_restaurant(restaurant1[:name],restaurant1[:description],
  #   restaurant1[:address1],restaurant1[:address2],
  #   restaurant1[:city],restaurant1[:county],restaurant1[:postcode])
  #   click 'View Restaurants'
  #   restaurant2 =
  #   {
  #     :name =>'Lee Chinese',
  #     :description => 'Chinese',
  #     :address1 =>'10 Lomdon Close',
  #     :address2 =>'Sparclls',
  #     :city => 'Swindon',
  #     :county => 'Wiltshire',
  #     :postcode =>'SN3 5FF'
  #   }
  #   add_restaurant(restaurant2[:name],restaurant2[:description],
  #   restaurant2[:address1],restaurant2[:address2],
  #   restaurant2[:city],restaurant2[:county],restaurant2[:postcode])
  #   click 'View Restaurants'
  #   expect(page).to have_content(restaurant1[:name])
  #   expect(page).to have_content(restaurant1[:description])
  #   expect(page).to have_content(restaurant2[:name])
  #   expect(page).to have_content(restaurant2[:description])
  #   expect(page).not_to 'No restaurants avaliable'
  # end
end
