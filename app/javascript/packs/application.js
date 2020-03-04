import "bootstrap";

import { initStarRating } from '../plugins/init_star_rating';


initStarRating();



$(document).ready(function(){
  $(".filter-choice").click(function(){
    $(".filter-choice").toggleClass("active");
  });
});

