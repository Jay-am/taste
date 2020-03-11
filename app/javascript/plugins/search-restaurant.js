export const searchRestaurant = () => {

  document.addEventListener("DOMContentLoaded", () => {
    const searchButton = document.getElementById('search-btn');
    const searchResults = document.querySelector('.search-results');
    if (searchButton && searchResults) {
      if (window.location.href.includes("restaurants/search") && window.location.search.includes("query=")){
        searchResults.classList.add("animate")
      }
    };
  })
};
