# 1. Clean the database 🗑️
puts 'Cleaning the database...'
Restaurant.destroy_all
puts 'Database cleaned!'

# 2. Create the instances 🏗️
puts 'Creating restaurants...'
Restaurant.create!(
  name:  'McDonalds',
  address: 'Av. Paulista, 1000',
  rating: 2,
  chef_name: 'Ronald McDonald'
)
Restaurant.create!(
  name:  'Sukiya',
  address: 'Av. Paulista',
  rating: 3,
  chef_name: 'Suzuki'
)
Restaurant.create!(
  name: 'Outback',
  address: 'Shopping Eldorado',
  rating: 5,
  chef_name: 'Douglas'
)
Restaurant.create!(
  name: 'Mani',
  address: 'Pinheiros',
  rating: 5,
  chef_name: 'Helena Rios'
)
puts "#{Restaurant.count} restaurants created!"

# 3. Display a message 🎉
puts 'All done!'
