def add_restaurant(restaurant)
  click_link 'Add Restaurant'
  fill_in('restaurant[name]', with: restaurant[:name])
  fill_in('restaurant[description]', with: restaurant[:description])
  fill_in('restaurant[address1]', with: restaurant[:address1])
  fill_in('restaurant[address2]', with: restaurant[:address2])
  fill_in('restaurant[city]', with: restaurant[:city])
  fill_in('restaurant[county]', with: restaurant[:county])
  fill_in('restaurant[postcode]', with: restaurant[:postcode])
  click_on('Save Restaurant')
end

def edit_restaurant(restaurant)
  image_src = restaurant[:image]
  click_on 'Edit'
  fill_in('restaurant[name]', with: restaurant[:name])
  fill_in('restaurant[description]', with: restaurant[:description])
  fill_in('restaurant[address1]', with: restaurant[:address1])
  fill_in('restaurant[address2]', with: restaurant[:address2])
  fill_in('restaurant[city]', with: restaurant[:city])
  fill_in('restaurant[county]', with: restaurant[:county])
  fill_in('restaurant[postcode]', with: restaurant[:postcode])
  path = 'app/assets/images'
  file_url = [Rails.root, path, image_src].join('/')
  attach_file('restaurant[image]', file_url)
  click_on('Save Restaurant')
end
