def add_restaurant(restaurant)
  name = restaurant[:name]
  description = restaurant[:description]
  address1 = restaurant[:address1]
  address2 = restaurant[:address2]
  city = restaurant[:city]
  county = restaurant[:county]
  postcode = restaurant[:postcode]
  click_link 'Add Restaurant'
  fill_in('restaurant[name]', :with => name)
  fill_in('restaurant[description]', :with => description)
  fill_in('restaurant[address1]', :with => address1)
  fill_in('restaurant[address2]', :with => address2)
  fill_in('restaurant[city]', :with => city)
  fill_in('restaurant[county]', :with => county)
  fill_in('restaurant[postcode]', :with => postcode)
  click_on('Save Restaurant')
end

def edit_restaurant(
  name, description,
  address1 = '', address2 = '',
  city = '', county = '',
  postcode = '',image_src='')
  click_on 'Edit'
  fill_in('restaurant[name]', :with => name)
  fill_in('restaurant[description]', :with => description)
  fill_in('restaurant[address1]', :with => address1)
  fill_in('restaurant[address2]', :with => address2)
  fill_in('restaurant[city]', :with => city)
  fill_in('restaurant[county]', :with => county)
  fill_in('restaurant[postcode]', :with => postcode)
  p Rails.root
  # Rails.root + '/app/assets/images/'+image_src
  file_url = [Rails.root,'app/assets/images', image_src].join('/')
  p file_url
  attach_file('restaurant[image]',file_url)
  click_on('Save Restaurant')
end
