require 'faker'

Restaurant.destroy_all

puts 'creating some restaurants'
5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  puts "#{Restaurant.count} Restaurant was created"
end
