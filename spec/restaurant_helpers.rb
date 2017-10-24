def add_restaurant(
  name, description,
  address1 = '', address2 = '',
  city = '', county = '',
  postcode = '')
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
  postcode = '')
  click_on 'Edit Restaurant'
  fill_in('restaurant[name]', :with => name)
  fill_in('restaurant[description]', :with => description)
  fill_in('restaurant[address1]', :with => address1)
  fill_in('restaurant[address2]', :with => address2)
  fill_in('restaurant[city]', :with => city)
  fill_in('restaurant[county]', :with => county)
  fill_in('restaurant[postcode]', :with => postcode)
  click_on('Save Restaurant')
end
