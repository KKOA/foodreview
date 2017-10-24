# feature 'Edit Restaurants' do
#   # include CapybaraHelper
#   pending scenario 'Input Valid Entry' do
#     visit '/restaurants/index'
#     restaurant1 =
#     {
#       :name =>'Nando',
#       :description => 'Chicken',
#       :address1 =>'5 Lomdon Close',
#       :address2 =>'Sparclls',
#       :city => 'Swindon',
#       :county => 'Wiltshire',
#       :postcode =>'SN6 5FF'
#     }
#     add_restaurant(restaurant1[:name],restaurant1[:description],
#     restaurant1[:address1],restaurant1[:address2],
#     restaurant1[:city],restaurant1[:county],restaurant1[:postcode])
#     click_on 'Edit'
#   end
#   pending scenario 'Input an Invalid' do
#     visit '/restaurants/index'
#     expect(page).to have_content 'No restaurants avaliable'
#   end
# end
