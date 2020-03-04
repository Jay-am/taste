import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { initStarRating } from '../plugins/init_star_rating';

initStarRating();



$(document).ready(function(){
  $(".filter-choice").click(function(){
    $(".filter-choice").toggleClass("active");
  });
});

