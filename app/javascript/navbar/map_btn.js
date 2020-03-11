const navigateToMapPage = (coords) => {
  // navigate to /restaurants/map with params ?lat=...&lng=...
  const lat = coords.coords.latitude;
  const lng = coords.coords.longitude;
 // redirect
 document.location.href = `/restaurants/map?lat=${lat}&lng=${lng}`;

}

const handleError = err => {
  console.log(err);
}

export const initMapNavBtn = () => {
  const btn = document.getElementById('map-nav-btn');
  if (btn) {
    // add click event listener to button
    btn.addEventListener('click', (event) => {
    // on click fetch geolocation of current user
    console.log(event)
    navigateToMapPage({
      coords: {
        latitude: 52.384357,
        longitude: 4.903119
      }
    })
      // navigator.geolocation.getCurrentPosition(navigateToMapPage, handleError)
    });
  };
}
