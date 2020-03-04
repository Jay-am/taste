import 'jquery-bar-rating';
import 'jquery-bar-rating/dist/themes/css-stars.css';


const initStarRating = () => {
  $('#review_meal_rating').barrating({
    theme: 'css-stars'
  });

  $('#review_service_rating').barrating({
    theme: 'css-stars'
  });

  $('#review_location_rating').barrating({
    theme: 'css-stars'
  });

  $('#review_rating').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };
