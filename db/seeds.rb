# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.where(:name => 'Hing Lee Chinese Restaurant').first_or_create(
name: 'Hing Lee Chinese Restaurant',
description: 'Chinese',
address1: '32 Curlew Street',
address2: '',
city:  'London',
county:  '',
postcode: 'SE1 2ND'
)


Restaurant.where(:name => 'IIL TOSCANO RISTORANTE').first_or_create(
name: 'IIL TOSCANO RISTORANTE',
description: 'Flame grilled Chicken',
address1: '6-7 station Parade Brighton Road',
address2: '',
city:  ' Sutton',
county:  'Surrey',
postcode: 'SM2 5AD'
)
