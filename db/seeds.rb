require 'open-uri'
require 'json'
puts "Cleaning up data"
Restaurant.destroy_all
User.destroy_all
Profile.destroy_all
Review.destroy_all
USER_INFORMATION = [
  {
    email: 'nature_boy@gmail.com',
    password: 'testing',
    profile: {
      first_name: "David",
      last_name: "Thoreau",
      information: "Just love food. There's nothing that makes me happier."
    },
    {
    email: 'k.johnson@gmail.com',
    password: 'testing',
    profile: {
      first_name: "Kamal",
      last_name: "Johnson",
      information: "Food just amazes me. I can spend all day thinking of it."
    },
    {
    email: 'rayan@gmail.com',
    password: 'testing',
    profile: {
      first_name: "Rayan",
      last_name: "laStrada",
      information: "Passionate about Food."
    },
    {
    email: 'emma@email.com',
    password: 'testing',
    profile: {
      first_name: "Emma",
      last_name: "Smith",
      information: "Just love food. There's nothing that makes me happier."
    },
    {
    email: 'olivia@email.com',
    password: 'testing',
    profile: {
      first_name: "Olivia",
      last_name: "Williams",
      information: "Food just amazes me. I can spend all day thinking of it."
    },
    {
    email: 'ava@email.com',
    password: 'testing',
    profile: {
      first_name: "Ava",
      last_name: "Moore",
      information: "Passionate about Food."
    },
    {
    email: 'sophia@email.com',
    password: 'testing',
    profile: {
      first_name: "Sophia",
      last_name: "Scott",
      information: "I could go to a restaurant every day. No better 3 times a day!"
    },
    {
    email: 'charlotte@email.com',
    password: 'testing',
    profile: {
      first_name: "Charlotte",
      last_name: "Hill",
      information: "I am a Food Photographer and Columnist of Ohhhhhhh that foooooood! DM me for fancy Restaurant Tips."
    },
    {
    email: 'mia@email.com',
    password: 'testing',
    profile: {
      first_name: "Mia",
      last_name: "Davis",
      information: "Never met a calorie I didn't like!"
    },
    {
    email: 'amelia@email.com',
    password: 'testing',
    profile: {
      first_name: "Amelia",
      last_name: "Miller",
      information: "Food is our Common Ground. A universal Experience."
    }
  }
]

REVIEWS = [
  'Amazing restaurant! Had a beautiful dinner night!!',
  'Amazing Food! Highly recommended!!',
  'I love this restaurant! I had a great experience',
  'Great Restaurant! Love it!',
  'Beautiful restaurant!',
  'Good food! good service!!',
  'Amazing restaurant!',
  'Bloodly lovely food.',
  'Visited this restaurant with my gf! She loves it.',
  'Had a amazing couple dinner.'
  'Good food! Good service! Good location!'
]

puts "Creating new restaurants"
restaurant1 = Restaurant.new(name: "The French Connection", address: "Hammarbystraat 5, Amsterdam", description: "Nice french cuisine, lovely staff, amazing atmosphere.", cuisine: ["French"], occasion: ["Candle Lit"], special_features: ["Open Fire"])
restaurant2 = Restaurant.new(name: "Choux", address: "Singel 460, Amsterdam", description: "Vegetarian, progressive, quirky location, great food.", cuisine: ["French"], occasion: ["Couple"], special_features: ["Vegetarian"])
restaurant3 = Restaurant.new(name: "Burger King", address: "Spadinalaan 50, Amsterdam", description: "Classic american style fastfood.", cuisine: ["American"], occasion: ["Group"], special_features: ["Vegetarian"])
restaurant1.save!
restaurant2.save!
restaurant3.save!
puts "Making users"


USER_INFORMATION.each do |user_data|
  user = User.create email: user_data[:email], password: user_data[:password]
  profile = Profile.create user: user, first_name: user_data[:profile][:first_name], last_name: user_data[:profile][:last_name], first_name: user_data[:profile][:description]

  REVIEWS.each do |desc|
    Review.create(
      description: desc,
      rating: rand(3..5),
      meal_rating: rand(3..4),
      service_rating: rand(3..5),
      location_rating: rand(3..5),
      cuisine: [CUISINES.sample],
      occasion: [OCCASIONS.sample],
      special_features: [SPECIAL_FEATURES.sample],
      local: true
    )
  end
end


# user11 = User.new(email: "grace@email.com", password: "123456")
# user12 = User.new(email: "chloe@email.com", password: "123456")
# user13 = User.new(email: "zoey@email.com", password: "123456")
# user14 = User.new(email: "nora@email.com", password: "123456")
# user15 = User.new(email: "hannah@email.com", password: "123456")
# user16 = User.new(email: "lucy@email.com", password: "123456")
# user17 = User.new(email: "claire@email.com", password: "123456")
# user18 = User.new(email: "anna@email.com", password: "123456")
# user19 = User.new(email: "liam@email.com", password: "123456")
# user20 = User.new(email: "noah@email.com", password: "123456")
# user21 = User.new(email: "william@email.com", password: "123456")
# user22 = User.new(email: "james@email.com", password: "123456")
# user23 = User.new(email: "oliver@email.com", password: "123456")
# puts "Assigning users to profiles"




# profile10 = Profile.new(user: user10, first_name: "Amelia", last_name: "Miller", information: "But First.....Food!")
# profile11 = Profile.new(user: user11, first_name: "Grace", last_name: "Wilson", information: "Foodie and Food Photographer.")
# profile12 = Profile.new(user: user12, first_name: "Chloe", last_name: "Parker", information: "Yes I can eat all day long :)")
# profile13 = Profile.new(user: user13, first_name: "Zoey", last_name: "Harris", information: "Passionate about Cupcakes. Know all the best places to get them!")
# profile14 = Profile.new(user: user14, first_name: "Nora", last_name: "Jones", information: "Food is just amazing. It not only tastes incredible, it also connects people.")
# profile15 = Profile.new(user: user15, first_name: "Hannah", last_name: "Peterson", information: "Everything is better with Chocolate!")
# profile16 = Profile.new(user: user16, first_name: "Lucy", last_name: "Morgan", information: "Food? Always!")
# profile17 = Profile.new(user: user17, first_name: "Claire", last_name: "Howard", information: "Food is our Common Ground. A universal Experience.")
# profile18 = Profile.new(user: user18, first_name: "Anna", last_name: "Taylor", information: "Ohhhhhhh that foooooood!")
# profile19 = Profile.new(user: user19, first_name: "Liam", last_name: "Johnson", information: "All you need is.....Steak!")
# profile20 = Profile.new(user: user20, first_name: "Noah", last_name: "Clark", information: "Give me those burgers!!!!")
# profile21 = Profile.new(user: user21, first_name: "William", last_name: "Torres", information: "Vegetarian on Rehab!")
# profile22 = Profile.new(user: user22, first_name: "James", last_name: "Brown", information: "Meat addicted. Not even lying!")
# profile23 = Profile.new(user: user23, first_name: "Oliver", last_name: "Carter", information: "What I love about food? Everything!")
puts "Making reviews"
review1 = Review.new(description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi quae sunt excepturi magnam porro maxime earum, deleniti magni. Cupiditate nobis ducimus, eius quaerat! Perferendis necessitatibus rem inventore reiciendis amet veniam!", rating: 3, meal_rating: 5, service_rating: 2, location_rating: 2, cuisine: ["french"], occasion: ["candle light"], special_features: ["fireplace"], restaurant: restaurant1, profile: profile1, local: false)
review2 = Review.new(description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi quae sunt excepturi magnam porro maxime earum, deleniti magni. Cupiditate nobis ducimus, eius quaerat! Perferendis necessitatibus rem inventore reiciendis amet veniam!", rating: 3, meal_rating: 5, service_rating: 2, location_rating: 2, cuisine: ["french"], occasion: ["candle light"], special_features: ["fireplace"], restaurant: restaurant2, profile: profile2, local: true)
review3 = Review.new(description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi quae sunt excepturi magnam porro maxime earum, deleniti magni. Cupiditate nobis ducimus, eius quaerat! Perferendis necessitatibus rem inventore reiciendis amet veniam!", rating: 3, meal_rating: 5, service_rating: 2, location_rating: 2, cuisine: ["french"], occasion: ["candle light"], special_features: ["fireplace"], restaurant: restaurant3, profile: profile3, local: true)
review4 = Review.new(description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi quae sunt excepturi magnam porro maxime earum, deleniti magni. Cupiditate nobis ducimus, eius quaerat! Perferendis necessitatibus rem inventore reiciendis amet veniam!", rating: 3, meal_rating: 5, service_rating: 2, location_rating: 2, cuisine: ["french"], occasion: ["candle light"], special_features: ["fireplace"], restaurant: restaurant1, profile: profile2, local: false)
review5 = Review.new(description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi quae sunt excepturi magnam porro maxime earum, deleniti magni. Cupiditate nobis ducimus, eius quaerat! Perferendis necessitatibus rem inventore reiciendis amet veniam!", rating: 3, meal_rating: 5, service_rating: 2, location_rating: 2, cuisine: ["french"], occasion: ["candle light"], special_features: ["fireplace"], restaurant: restaurant1, profile: profile3, local: false)
review1.save!
review2.save!
review3.save!
review4.save!
review5.save!
puts "How many JSON's are you creating? 'All of them'"
url = 'http://open.data.amsterdam.nl/EtenDrinken.json'
amsterdam = open(url).read
json = JSON.parse(amsterdam)
json[1..-1].each do |data| # [1..-1] ignores first dummy element
  Restaurant.create(
    name: data['title'],
    address: data['location']['adress']
  )
end




