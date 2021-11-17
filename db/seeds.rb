puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
little_star = { name: "Little Star", address: "123 Divisadero San Francisco, Ca", category: "italian", phone_number: "415-555-5555" }
pig_whistle = { name: "The Pig and Whistle", address: "100 Wood St San Francisco, Ca", category: "belgian", phone_number: "415-111-2222" }

[little_star, pig_whistle].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
