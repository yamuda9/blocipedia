User.delete_all
Wiki.delete_all

# Create member for testing
membertest = User.create!(
  email:    'member@example.com',
  password: 'helloworld'
)

# Create Users
5.times do
  user = User.create!(
    email:    Faker::Internet.email,
    password: Faker::Internet.password
  )
end

users = User.all

# Create Apps
15.times do
  wiki = Wiki.create!(
  user:    users.sample,
  title:   Faker::StarWars.character,
  body:    Faker::StarWars.quote,
  private: Faker::Boolean.boolean
  )
end

wikis = Wiki.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
