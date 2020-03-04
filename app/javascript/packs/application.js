import "bootstrap";

import { initStarRating } from '../plugins/init_star_rating';
import { openDashboard } from '../plugins/dashboard';

initStarRating();
openDashboard();


$(document).ready(function(){
  $(".filter-choice").click(function(){
    $(".filter-choice").toggleClass("active");
  });
});

