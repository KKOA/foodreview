# This file should contain all the record creation needed to
# seed the database with its default values.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

path = "#{Rails.root}/app/assets/images/sample/"
restaurant1 = Restaurant.where(name: 'Hing Lee Chinese Restaurant').first_or_create(
  name: 'Hing Lee Chinese Restaurant',
  description: 'Chinese',
  address1: '32 Curlew Street',
  address2: '',
  city:  'London',
  county:  '',
  postcode: 'SE1 2ND',
  # image: 'restaurant1.jpg'
  image: File.open("#{path}restaurant1.jpg")
)

Review.where(comment: 'Great Restaurant', restaurant_id: restaurant1.id).first_or_create(
  comment: 'Great Restaurant',
  rating: '4',
  restaurant_id: restaurant1.id
)

Review.where(comment: 'Best Chinese experience yet', restaurant_id: restaurant1.id).first_or_create(
  comment: 'Best Chinese experience yet',
  rating: '5',
  restaurant_id: restaurant1.id
)

restaurant2 = Restaurant.where(name: 'II TOSCANO').first_or_create(
  name: 'II TOSCANO',
  description: 'Italien',
  address1: '7 Brighton Road',
  address2: '',
  city:  ' Sutton',
  county:  '',
  postcode: 'SM2 5AD'
)

Review.where(comment: 'Worse restaurant ever', restaurant_id: restaurant1.id).first_or_create(
  comment: 'Worse restaurant ever',
  rating: '1',
  restaurant_id: restaurant2.id
)

# "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "comment" varchar, "rating" integer, "restaurant_id" integer, "created_at" dat

restaurant3 = Restaurant.where(name: 'The Waterside Inn').first_or_create(
  name: 'The Waterside Inn',
  description: 'French cuisine',
  address1: 'Ferry Road',
  address2: '',
  city:  'Bray',
  county:  '',
  postcode: 'SL6 2AT',
  # image: 'restaurant1.jpg'
  image: File.open("#{path}restaurant3.jpg")
)

Review.where(comment: 'Average', restaurant_id: restaurant1.id).first_or_create(
  comment: 'Average',
  rating: '3',
  restaurant_id: restaurant3.id
)

Restaurant.where(name: 'The Shakes & Co London').first_or_create(
  name: 'The Shakes & Co London',
  description: 'Desert',
  address1: '182 High Road',
  address2: '',
  city:  'London',
  county:  '',
  postcode: 'NW10 2PB',
  # image: 'restaurant1.jpg'
  image: File.open("#{path}restaurant4.jpg")
)

Restaurant.where(name: 'Infamous Diner').first_or_create(
  name: 'Infamous Diner',
  description: 'American',
  address1: '3-5 Basil Chambers Nicholas Croft',
  address2: '',
  city:  'Manchester',
  county:  '',
  postcode: 'M4 1EY',
  # image: 'restaurant1.jpg'
  image: File.open("#{path}restaurant5.jpg")
)

Restaurant.where(name: 'Los Gatos').first_or_create(
  name: 'Los Gatos',
  description: 'Spanish',
  address1: '1-3 Devizes Road',
  address2: 'Old Town',
  city:  'Swindon',
  county:  '',
  postcode: 'SN4 4BJ',
  # image: 'restaurant1.jpg'
  image: File.open("#{path}restaurant6.jpg")
)

Restaurant.where(name: 'Nur').first_or_create(
  name: 'Nur',
  description: 'Egyptian',
  address1: '1-3 Devizes Road',
  address2: '',
  city:  'Glasgow',
  county:  '',
  postcode: 'G5 9HR',
  # image: 'restaurant1.jpg'
  image: File.open("#{path}restaurant7.jpg")
)

Restaurant.where(name: 'Thai Garden').first_or_create(
  name: 'Thai Garden',
  description: 'Thai',
  address1: '100 West Street',
  address2: '',
  city:  'Bristol',
  county:  '',
  postcode: 'BS3 3LR',
  # image: 'restaurant1.jpg'
  image: File.open("#{path}restaurant8.jpg")
)

Restaurant.where(name: 'Amigos Mexican Restaurant').first_or_create(
  name: 'Amigos Mexican Restaurant',
  description: 'Mexican',
  address1: '41 Friar Street',
  address2: '',
  city:  'Worchester',
  county:  '',
  postcode: 'WR1 2NA',
  # image: 'restaurant1.jpg'
  image: File.open("#{path}restaurant9.jpg")
)

Restaurant.where(name: 'Lebaneat').first_or_create(
  name: 'Lebaneat',
  description: 'Lebanese',
  address1: '47 North Baliey',
  address2: '',
  city:  'Durham',
  county:  '',
  postcode: 'DH1 3ET',
  # image: 'restaurant1.jpg'
  image: File.open("#{path}restaurant10.jpg")
)
