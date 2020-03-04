
puts "Cleaning up data"
Restaurant.destroy_all
User.destroy_all
Profile.destroy_all
Review.destroy_all

puts "Creating new restaurants"
restaurant1 = Restaurant.new(name: "The French Connection", address: "Singel 460", description: "Nice french cuisine, lovely staff, amazing atmosphere.", cuisine: ["french"], occasion: ["candle light"], special_features: ["fireplace"])
restaurant2 = Restaurant.new(name: "Choux", address: "Singel 460", description: "Vegetarian, progressive, quirky location, great food.", cuisine: ["french"], occasion: ["couple"], special_features: ["vegetarian"])
restaurant3 = Restaurant.new(name: "Burger King", address: "Singel 460", description: "Classic american style fastfood.", cuisine: ["american"], occasion: ["group"], special_features: ["vegetarian"])

restaurant1.save!
restaurant2.save!
restaurant3.save!

puts "Making users"
user1 = User.new(email: "nature_boy@gmail.com", password: "testing")
user2 = User.new(email: "k.johnson@gmail.com", password: "testing")
user3 = User.new(email: "rayan@gmail.com", password: "testing")

user1.save!
user2.save!
user3.save!

puts "Assigning users to profiles"
profile1 = Profile.new(user: user1, first_name: "David", last_name: "Thoreau")
profile2 = Profile.new(user: user2, first_name: "Kamal", last_name: "Johnson")
profile3 = Profile.new(user: user3, first_name: "Rayan", last_name: "laStrada")

profile1.save!
profile2.save!
profile3.save!

puts "Making reviews"
review1 = Review.new(description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi quae sunt excepturi magnam porro maxime earum, deleniti magni. Cupiditate nobis ducimus, eius quaerat! Perferendis necessitatibus rem inventore reiciendis amet veniam!", rating: 3, meal_rating: 5, service_rating: 2, location_rating: 2, cuisine: ["french"], occasion: ["candle light"], special_features: ["fireplace"], restaurant: restaurant1, profile: profile1, local: false)
review2 = Review.new(description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi quae sunt excepturi magnam porro maxime earum, deleniti magni. Cupiditate nobis ducimus, eius quaerat! Perferendis necessitatibus rem inventore reiciendis amet veniam!", rating: 3, meal_rating: 5, service_rating: 2, location_rating: 2, cuisine: ["french"], occasion: ["candle light"], special_features: ["fireplace"], restaurant: restaurant2, profile: profile2, local: true)
review3 = Review.new(description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi quae sunt excepturi magnam porro maxime earum, deleniti magni. Cupiditate nobis ducimus, eius quaerat! Perferendis necessitatibus rem inventore reiciendis amet veniam!", rating: 3, meal_rating: 5, service_rating: 2, location_rating: 2, cuisine: ["french"], occasion: ["candle light"], special_features: ["fireplace"], restaurant: restaurant3, profile: profile3, local: true)

review1.save!
review2.save!
review3.save!
