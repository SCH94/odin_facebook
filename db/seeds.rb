User.create(name: "Example User",
              email: "example@railstutorial.org",
              password: "password")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create(name:  name,
               email: email,
               password: password)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.posts.create!(content: content) }
end

# Friendships
users = User.all
user  = users.first
friends = users[2..10]

friends.each { |friend| user.add_friend(friend) }
