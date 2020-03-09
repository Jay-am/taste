
puts "Cleaning up data"
Restaurant.destroy_all
User.destroy_all
Profile.destroy_all
Review.destroy_all

puts "Creating new restaurants"
restaurant1 = Restaurant.new(name: "The French Connection", address: "Hammarbystraat 5, Amsterdam", description: "Nice french cuisine, lovely staff, amazing atmosphere.", cuisine: ["French"], occasion: ["Candle Lit"], special_features: ["Open Fire"])
restaurant2 = Restaurant.new(name: "Choux", address: "Singel 460, Amsterdam", description: "Vegetarian, progressive, quirky location, great food.", cuisine: ["French"], occasion: ["Couple"], special_features: ["Vegetarian"])
restaurant3 = Restaurant.new(name: "Burger King", address: "Spadinalaan 50, Amsterdam", description: "Classic american style fastfood.", cuisine: ["American"], occasion: ["Group"], special_features: ["Vegetarian"])

restaurant1.save!
restaurant2.save!
restaurant3.save!

puts "Making users"
user1 = User.new(email: "nature_boy@gmail.com", password: "testing")
user2 = User.new(email: "k.johnson@gmail.com", password: "testing")
user3 = User.new(email: "rayan@gmail.com", password: "testing")
user4 = User.new(email: "emma@email.com", password: "123456")
user5 = User.new(email: "olivia@email.com", password: "123456")
user6 = User.new(email: "ava@email.com", password: "123456")
user7 = User.new(email: "sophia@email.com", password: "123456")
user8 = User.new(email: "charlotte@email.com", password: "123456")
user9 = User.new(email: "mia@email.com", password: "123456")
user10 = User.new(email: "amelia@email.com", password: "123456")
user11 = User.new(email: "amelia@email.com", password: "123456")
user12 = User.new(email: "chloe@email.com", password: "123456")
user13 = User.new(email: "zoey@email.com", password: "123456")
user14 = User.new(email: "nora@email.com", password: "123456")
user15 = User.new(email: "hannah@email.com", password: "123456")
user16 = User.new(email: "lucy@email.com", password: "123456")
user17 = User.new(email: "claire@email.com", password: "123456")
user18 = User.new(email: "anna@email.com", password: "123456")
user19 = User.new(email: "liam@email.com", password: "123456")
user20 = User.new(email: "noah@email.com", password: "123456")
user21 = User.new(email: "william@email.com", password: "123456")
user22 = User.new(email: "james@email.com", password: "123456")
user23 = User.new(email: "oliver@email.com", password: "123456")

user1.save!
user2.save!
user3.save!
user4.save!
user5.save!
user6.save!
user7.save!
user8.save!
user9.save!
user10.save!
user11.save!
user12.save!
user13.save!
user14.save!
user15.save!
user16.save!
user17.save!
user18.save!
user19.save!
user20.save!
user21.save!
user22.save!
user23.save!

puts "Assigning users to profiles"
profile1 = Profile.new(user: user1, first_name: "David", last_name: "Thoreau")
profile2 = Profile.new(user: user2, first_name: "Kamal", last_name: "Johnson")
profile3 = Profile.new(user: user3, first_name: "Rayan", last_name: "laStrada")
profile = Profile.new(user: user, first_name: "", last_name: "", information: "")

profile1.save!
profile2.save!
profile3.save!
profile4.save!
profile5.save!
profile6.save!
profile7.save!
profile8.save!
profile9.save!
profile10.save!
profile11.save!
profile12.save!
profile13.save!
profile14.save!
profile15.save!
profile16.save!
profile17.save!
profile18.save!
profile19.save!
profile20.save!
profile21.save!
profile22.save!
profile23.save!

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
