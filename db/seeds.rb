# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(
	name: 'Red Lobster',
	cuisine_type: 'Seafood',
	price_range: 4,
	rating: 5,
	capacity: 50
)
Restaurant.create(
	name: 'Wendys',
	cuisine_type: 'Fast Food',
	price_range: 1,
	rating: 3,
	capacity: 30
)
Restaurant.create(
	name: 'Chipotle',
	cuisine_type: 'Mexican',
	price_range: 3,
	rating: 5,
	capacity: 15
)
Restaurant.create(
	name: 'McDonalds',
	cuisine_type: 'Fast Food',
	price_range: 1,
	rating: 3,
	capacity: 100
)