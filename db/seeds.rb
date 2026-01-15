# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clear existing data
puts "Clearing existing data..."
User.destroy_all
Friend.destroy_all

# Create a demo user
puts "Creating demo user..."
demo_user = User.create!(
  email: 'demo@example.com',
  password: 'password123',
  password_confirmation: 'password123'
)

puts "Creating sample friends..."
# Create some sample friends for the demo user
demo_user.friends.create!([
  {
    first_name: 'John',
    last_name: 'Doe',
    email: 'john.doe@example.com',
    phone: '555-0101',
    twitter: '@johndoe'
  },
  {
    first_name: 'Jane',
    last_name: 'Smith',
    email: 'jane.smith@example.com',
    phone: '555-0102',
    twitter: '@janesmith'
  },
  {
    first_name: 'Bob',
    last_name: 'Johnson',
    email: 'bob.johnson@example.com',
    phone: '555-0103',
    twitter: '@bobjohnson'
  },
  {
    first_name: 'Alice',
    last_name: 'Williams',
    email: 'alice.williams@example.com',
    phone: '555-0104',
    twitter: '@alicewilliams'
  },
  {
    first_name: 'Charlie',
    last_name: 'Brown',
    email: 'charlie.brown@example.com',
    phone: '555-0105',
    twitter: '@charliebrown'
  }
])

puts "Seed data created successfully!"
puts "Demo user credentials:"
puts "  Email: demo@example.com"
puts "  Password: password123"
puts "  Friends created: #{demo_user.friends.count}"
