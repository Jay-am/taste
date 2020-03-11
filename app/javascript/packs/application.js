import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { initStarRating } from '../plugins/init_star_rating';
import { toggleCheckboxState } from '../plugins/checkboxes';
import { initMapNavBtn } from '../navbar/map_btn';

import { expandFilters } from '../plugins/expandFilters';
import { searchRestaurant } from '../plugins/search-restaurant';


initStarRating();
initMapNavBtn();
initMapbox();
toggleCheckboxState();


expandFilters();
searchRestaurant();

// $(document).ready(function(){
//   $(".filter-choice").click(function(){
//     $(".filter-choice").toggleClass("active");
//   });
// });

