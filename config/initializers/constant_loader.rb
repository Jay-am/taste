STYLES = [
  "Coffee",
  "Tee",
  "Breakfast",
  "Brunch",
  "Lunch",
  "Dinner",
  "Drinks",
  "Ice Cream",
  "Snacks",
  "All Night",
  "Smoothies",
  "Fresh Juices"
]

CUISINES = [
  "Italian",
  "Afghan",
  "African",
  "American",
  "Argentinian",
  "Asian",
  "Australian",
  "Austrian",
  "Belgian",
  "Brazilian",
  "Cambodian",
  "Caribbean",
  "Chinese",
  "Colombian",
  "Cuban",
  "Danish",
  "Dutch",
  "English",
  "Ethiopian",
  "European",
  "French",
  "German",
  "Greek",
  "Hawaiian",
  "Indian",
  "Indonesian",
  "International",
  "Israeli",
  "Japanese",
  "Lebanese",
  "Mediterranean",
  "Mexican",
  "Middle Eastern",
  "Moroccan",
  "Peruvian",
  "Portuguese",
  "Scandinavian",
  "South American",
  "Spanish",
  "Surinamese",
  "Syrian",
  "Thai",
  "Turkish",
  "Vietnamese"
]

DISHES = [
  "Vegan",
  "Vegetarian",
  "Organic",
  "Local Produce",
  "Dairy Free",
  "Gluten free",
  "Kosher",
  "Halal"
]

FOOD_TYPES = [
  "Barbecue",
  "Burgers",
  "Curry",
  "Chicken",
  "Falafel",
  "Healthy",
  "Hot Dog",
  "Kebab",
  "Pho",
  "Salad",
  "Ribs",
  "Street Food",
  "Sweet Treats",
  "Wings",
  "Wraps",
  "Desserts",
  "Bakery",
  "Pastry",
  "Tex Mex",
  "Comfort Food",
  "Steaks",
  "Pizza",
  "Pasta",
  "Seafood",
  "Sushi",
  "Tapas",
  "Crêpes",
  "Pancakes",
  "Waffles",
  "Cakes",
  "Ice Cream",
  "Pub",
  "Cocktail Bar"
]

FOOD_STYLES = [
  "Regional Cuisine",
  "Traditional Cuisine",
  "Novelle Cuisine",
  "Haute Cuisine",
  "Fusion Cuisine",
  "Fine Dining",
  "Contemporary Cuisine",
  "Fast Food",
]

GASTRONOMIES = [
  "Bistro",
  "Brasserie",
  "Winebar",
  "Bar",
  "Hotel Restaurant",
]

DRINKS = [
 "Cocktails",
 "Long Drings",
 "Craft Beer",
 "Wine Selection",
 "Whiskey",
 "Smoothies",
 "Fresh Juices"
]

RATINGS = [
  "Locals",
  "Tourists",
  "Similar Taste",
  "Business Travellers",
  "Customized"
]

SPECIAL_FEATURES = [
  "Sustainable",
  "Fairtrade",
  "Terrace",
  "Garden",
  "Sun",
  "Shade",
  "Open Fire",
  "Wheelchair Accesible",
  "Wifi",
  "Air-conditioning",
  "Pets allowed",
  "Valet parking",
  "Lease for Parties",
  "Pool Table",
  "Ping Pong",
  "Darts",
  "Board Games",
  "Arcade Games",
  "Baby Changing",
  "Child Friendly",
  "Sports Broadcasting",
  "Magazines",
  "Newspapers",
  "Parking",
  "Public Transport",
  "Live Music",
  "Comedy",
  "Pub Quizes",
  # "Playground XXXXXXXXXXXXXXXXXXXXXXXXX",
  # Schaukel
  # Sandkasten
  # Spilezeug für Kinder
  # "Manmade Beach XXXXXXXXXXXXXXXXXXXXXXXXX",
  # "Pool XXXXXXXXXXXXXXXXXXXXXXXXX",
  # "Amazing View XXXXXXXXXXXXXXXXXXXXXXXXX"
  # "Waterfront XXXXXXXXXXXXXXXXXXXXXXXXX",
]

OCCASIONS = [
  "Romantic",
  "First Date",
  "Candle Lit",
  "Girl's Night out",
  "Boy's Night out",
  "Groups",
  "Families",
  "Business Dinner",
  "Business Lunch",
  "Seminars",
  "Birthday",
  "Weddings"
]

SERVICE = [
  "Excellent",
  "Above Average",
  "Average"
]

LOCATION = [
  "Rustic",
  "Romantic",
  "Stylish",
  "Instagrammable",
  "Modern",
  "Kitsch",
  "Traditional",
  "Art Deco",
  "Cosy",
  "Cool",
  "Trendy",
  "Chic",
  "Grungy",
  "Industrial",
]

LANGUAGES = [
  "English",
  "French",
  "German",
  "Spanish",
  "Portugeese",
  "Italian",
  "Dutch",
  "Polish",
  "Russian",
  "Turkish",
  "Chinese",
  "Japanese",
  "Korean",
  "Vitnamese",
  "Hindi",
  "Arabic",
  "Bengali",
  "Lahnda",
  "Javanese",
  "Telugu",
  "Marathi",
  "Tamil",
  "Urdu"
]

OPEN_HOURS = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday",
  "Public Holidays"
]

DISTANCE = [
]

LOCATED = [
  "Central",
  "Cool Neigbourhood"
]

PAYMENTS = [
  "Mobile Pay",
  "Mastercard",
  "VISA",
  "American Express",
  "Maestro",
  "VISA Electron"
]


RATING = [
  "1 *",
  "2 *",
  "3 *",
  "4 *",
  "5 *",
]

PRICES = [
  "$",
  "$$",
  "$$$",
  "$$$$",
]



ALL_FILTERS = {

  STYLES: {
    'filters': STYLES,
    'label': 'Style',
    'header_id': 'styles-heading',
    'content_id': 'styles-filter',
    'input_name': 'filters[]styles[]'
  },

  CUISINE: {
    'filters': CUISINES,
    'label': 'Cuisine',
    'header_id': 'cuisines-heading',
    'content_id': 'cuisines-filter',
    'input_name': 'filters[]cuisine[]'
  },

  DISHES: {
    'filters': DISHES,
    'label': 'Dish',
    'header_id': 'dishes-heading',
    'content_id': 'dishes-filter',
    'input_name': 'filters[]dishes[]'
  },

  FOOD_TYPES: {
    'filters': FOOD_TYPES,
    'label': 'Food Type',
    'header_id': 'food_types-heading',
    'content_id': 'food_types-filter',
    'input_name': 'filters[]food_types[]'
  },

  FOOD_STYLES: {
    'filters': FOOD_STYLES,
    'label': 'Food Style',
    'header_id': 'food_styles-heading',
    'content_id': 'food_styles-filter',
    'input_name': 'filters[]food_styles[]'
  },

  GASTRONOMIES: {
    'filters': GASTRONOMIES,
    'label': 'Gastronomy',
    'header_id': 'gastronomies-heading',
    'content_id': 'gastronomies-filter',
    'input_name': 'filters[]gastronomies[]'
  },

  DRINKS: {
    'filters': DRINKS,
    'label': 'Drinks',
    'header_id': 'drinks-heading',
    'content_id': 'drinks-filter',
    'input_name': 'filters[]drinks[]'
  },

  RATINGS: {
    'filters': RATINGS,
    'label': 'Ratings',
    'header_id': 'ratings-heading',
    'content_id': 'ratings-filter',
    'input_name': 'filters[]ratings[]'
  },

  SPECIAL_FEATURES: {
    'filters': SPECIAL_FEATURES,
    'label': 'Special Features',
    'header_id': 'special_features-heading',
    'content_id': 'special_features-filter',
    'input_name': 'filters[]special_features[]'
  },

  OCCASION: {
    'filters': OCCASIONS,
    'label': 'Occasion',
    'header_id': 'occasions-heading',
    'content_id': 'occasions-filter',
    'input_name': 'filters[]occasion[]'
  },

  SERVICE: {
    'filters': SERVICE,
    'label': 'Service',
    'header_id': 'Service-heading',
    'content_id': 'Service-filter',
    'input_name': 'filters[]Service[]'
  },

  LOCATION: {
    'filters': LOCATION,
    'label': 'Location',
    'header_id': 'Location-heading',
    'content_id': 'Location-filter',
    'input_name': 'filters[]Location[]'
  },

  LANGUAGES: {
    'filters': LANGUAGES,
    'label': 'Language',
    'header_id': 'Languages-heading',
    'content_id': 'Languages-filter',
    'input_name': 'filters[]Languages[]'
  },

  OPEN_HOURS: {
    'filters': OPEN_HOURS,
    'label': 'Open Hours',
    'header_id': 'open_hours-heading',
    'content_id': 'open_hours-filter',
    'input_name': 'filters[]open_hours[]'
  },

  # DISTANCE: {
  #   'filters': DISTANCE,
  #   'label': 'Distance',
  #   'header_id': 'distance-heading',
  #   'content_id': 'distance-filter',
  #   'input_name': 'filters[]distance[]'
  # },

 LOCATED: {
    'filters': LOCATED,
    'label': 'Placed',
    'header_id': 'placed-heading',
    'content_id': 'placed-filter',
    'input_name': 'filters[]placed[]'
  },

  PAYMENTS: {
    'filters':  PAYMENTS,
    'label': 'Payments',
    'header_id': 'payments-heading',
    'content_id': 'payments-filter',
    'input_name': 'filters[]payments[]'
  },

}
