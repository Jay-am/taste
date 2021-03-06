require 'open-uri'
require 'json'
puts "Cleaning up data"

Restaurant.destroy_all
User.destroy_all
Profile.destroy_all
Review.destroy_all

USER_INFORMATION = [
  {
    email: 'nature_boy@gmail.co',
    password: 'testing',
    first_name: "David",
    last_name: "Thoreau",
    information: "Just love food. There's nothing that makes me happier."
  },
  {
    email: 'k.johnson@gmail.com',
    password: 'testing',
    first_name: "Kamal",
    last_name: "Johnson",
    information: "Food just amazes me. I can spend all day thinking of it."
  },
  {
    email: 'rayan@gmail.com',
    password: 'testing',
    first_name: "Rayan",
    last_name: "laStrada",
    information: "Passionate about Food."
  },
  {
    email: 'emma@email.com',
    password: 'testing',
    first_name: "Emma",
    last_name: "Smith",
    information: "Just love food. There's nothing that makes me happier."
  },
  {
    email: 'olivia@email.com',
    password: 'testing',
    first_name: "Olivia",
    last_name: "Williams",
    information: "Food just amazes me. I can spend all day thinking of it."
  },
  {
    email: 'ava@email.com',
    password: 'testing',
    first_name: "Ava",
    last_name: "Moore",
    information: "Passionate about Food."
  },
  {
    email: 'sophia@email.com',
    password: 'testing',
    first_name: "Sophia",
    last_name: "Scott",
    information: "I could go to a restaurant every day. No better 3 times a day!"
  },
  {
    email: 'charlotte@email.com',
    password: 'testing',
    first_name: "Charlotte",
    last_name: "Hill",
    information: "I am a Food Photographer and Columnist of Ohhhhhhh that foooooood! DM me for fancy Restaurant Tips."
  },
  {
    email: 'mia@email.com',
    password: 'testing',
    first_name: "Mia",
    last_name: "Davis",
    information: "Never met a calorie I didn't like!"
  },
  {
    email: 'amelia@email.com',
    password: 'testing',
    first_name: "Amelia",
    last_name: "Miller",
    information: "Food is our Common Ground. A universal Experience."
  }
]

REVIEWS = [
  'Amazing restaurant! Had a wonderful branch there!',
  'Had a great italian food at this restaurant.',
  'Great vegan restaurant. Service was amazing too!',
  'Great Restaurant! Love it!',
  'Super fluffy pancakes. My gf loved this place!',
  'Location is amazing. Food is amazing. Service is amazing!',
  'Tasty asian food. Very authentic.',
  'Had a great rib there. Food quality was wonderful!',
  'Love this restaurant! Highly recommended'
]

REVIEWS_PICS = [
  "https://res.cloudinary.com/kaori-kk/image/upload/v1584020781/taste/review6_yuaeum.png",
  "https://res.cloudinary.com/kaori-kk/image/upload/v1584021093/taste/review8_jed5bl.png",
  'https://res.cloudinary.com/kaori-kk/image/upload/v1584021092/taste/review7_caxnns.png',
  'https://res.cloudinary.com/kaori-kk/image/upload/v1584050450/taste/review20_oq7kav.png',
  "https://res.cloudinary.com/kaori-kk/image/upload/v1584021193/taste/review11_vgzhnb.png",
  "https://res.cloudinary.com/kaori-kk/image/upload/v1584021184/taste/review10_dngazd.png",
  "https://res.cloudinary.com/kaori-kk/image/upload/v1584021283/taste/Screenshot_2020-03-12_at_14.54.25_hy5zqz.png",
  "https://res.cloudinary.com/kaori-kk/image/upload/v1584021235/taste/review9_ntdavi.png",
  "https://res.cloudinary.com/kaori-kk/image/upload/v1584026215/taste/review15_zy2bhp.png"
]



puts "Creating new restaurants"

RESTAURANTS_HASH = [
  { name: "The French Connection", address: "Hammarbystraat 5, Amsterdam", description: "Nice french cuisine, lovely staff, amazing atmosphere.", cuisine: ["French"], occasion: ["Candle Lit"], special_features: ["Open Fire"], ratings: ["4"]},
  { name: "Choux", address: "Singel 460, Amsterdam", description: "Vegetarian, progressive, quirky location, great food.", cuisine: ["French"], occasion: ["Couple"], special_features: ["Vegetarian"]},
  { name: "Burger King", address: "Spadinalaan 50, Amsterdam", description: "Classic american style fastfood.", cuisine: [CUISINES.sample], occasion: ["Group"], special_features: ["Vegetarian"]},
  { name: "Pianeta Terra", address: "Beulingstraat 7, 1017 BA, Amsterdam", description: "Pianeta Terra has been chosen as one of world's Best 50 Italian Restaurants", styles: ["Dinner"], cuisine: ["Italian"], dishes: ["Organic"], occasion: ["Romantic"], special_features: ["Sustainable"], service: ["Excellent"], languages: ["German"]},
  { name: "Dope", address: "Eerste van der Helststraat 68-82, 1073 AD Amsterdam", description: "Italian Restaurant. Attire. Casual.", cuisine: ["Italian"]},
  { name: "Hearth", address: "Albert Cuypstraat 215, 1073 BG Amsterdam", description: "Vegetarian Friendly, Vegan Options, Gluten Free Options", cuisine: ["Italian"]},
  { name: "Trattoria Fantasia", address: "Marnixstraat 402, 1017 PL Amsterdam", description: "Pianeta Terra has been chosen as one of world's Best 50 Italian Restaurants", cuisine: ["Italian"]},
  { name: "Bussia", address: "Reestraat 2-32, 1016 DN Amsterdam", description: "Fine Italian dining with an elegant ambience in the heart of Amsterdam.", cuisine: ["Italian"]},
  { name: "Pastai", address: "Jan Pieter Heijestraat 119-113, 1054 MD Amsterdam", description: "LOVE LIVE EAT. every days. REAL ITALIAN PASTA. take away service available", cuisine: ["Italian"]}
]

RESTAURANT_PICS = [
  'https://res.cloudinary.com/kaori-kk/image/upload/v1584014168/taste/Screenshot_2020-03-12_at_12.55.09_kstkjy.png',
  'https://res.cloudinary.com/kaori-kk/image/upload/v1584014168/taste/Screenshot_2020-03-12_at_12.55.39_jruss6.png',
  'https://res.cloudinary.com/kaori-kk/image/upload/v1584014166/taste/Screenshot_2020-03-12_at_12.55.54_vpiq5f.png',
  'https://res.cloudinary.com/kaori-kk/image/upload/v1584014048/taste/Screenshot_2020-03-12_at_12.52.43_niqyp9.png',
  'https://res.cloudinary.com/kaori-kk/image/upload/v1584013879/taste/Screenshot_2020-03-12_at_12.50.10_msawer.png',
  'https://res.cloudinary.com/kaori-kk/image/upload/v1584013749/taste/pizza_lkevm7.jpg',
  'https://res.cloudinary.com/kaori-kk/image/upload/v1584014049/taste/Screenshot_2020-03-12_at_12.51.03_ua5l69.png',
  'https://res.cloudinary.com/kaori-kk/image/upload/v1584013880/taste/Screenshot_2020-03-12_at_12.50.21_eax7cy.png',
  'https://res.cloudinary.com/kaori-kk/image/upload/v1584018112/taste/Screenshot_2020-03-12_at_14.01.30_zyphhz.png'
]

RESTAURANTS_HASH.each_with_index do |value, index|
  restaurant = Restaurant.new value
  file = URI.open(RESTAURANT_PICS[index])
  restaurant.photo.attach(io: file, filename: File.basename(file.path))
  restaurant.save
end

puts "Making users"


USER_INFORMATION.each_with_index do |user_data, user_index|
  user = User.create email: user_data[:email], password: user_data[:password]

  profile = user.profile

  profile.update first_name: user_data[:first_name], last_name: user_data[:last_name], information: user_data[:information]

  if user_index < REVIEWS.length
    REVIEWS.each_with_index do |desc, index|
      review = Review.new(
        description: desc,
        rating: rand(3..5),
        meal_rating: rand(3..4),
        service_rating: rand(3..5),
        location_rating: rand(3..5),
        cuisine: [CUISINES.sample],
        occasion: [OCCASIONS.sample],
        special_features: [SPECIAL_FEATURES.sample],
        local: true,
        profile_id: profile.id,
        restaurant: Restaurant.all.sample
      )

      file = URI.open(REVIEWS_PICS[index])
      review.photo.attach(io: file, filename: File.basename(file.path))
      review.save
    end
  end
end

"Assigning users to profiles"

# puts "Making reviews"

# puts "How many JSON's are you creating? 'All of them'"
# url = 'http://open.data.amsterdam.nl/EtenDrinken.json'
# amsterdam = open(url).read
# json = JSON.parse(amsterdam)
# json[1..-1].each do |data| # [1..-1] ignores first dummy element
#   Restaurant.create(
#     name: data['title'],
#     address: data['location']['adress']
#   )
# end

