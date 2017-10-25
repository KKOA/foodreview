feature 'Edit Restaurants' do
  # include CapybaraHelper
  scenario 'Input Valid Entry' do
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
    edit_restaurant(restaurant2[:name],restaurant2[:description],
    restaurant2[:address1],restaurant2[:address2],
    restaurant2[:city],restaurant2[:county],restaurant2[:postcode])
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
      :name =>'',
      :description => '',
      :address1 =>'5 Lomdon Close',
      :address2 =>'Sparclls',
      :city => 'Swindon',
      :county => 'Wiltshire',
      :postcode =>'SN6 5FF'
    }
    edit_restaurant(restaurant2[:name],restaurant2[:description],
    restaurant2[:address1],restaurant2[:address2],
    restaurant2[:city],restaurant2[:county],restaurant2[:postcode])
    expect(page).not_to have_content(restaurant1[:name])
    expect(page).to have_content('Cannot Save Restuarant')


  end

end
