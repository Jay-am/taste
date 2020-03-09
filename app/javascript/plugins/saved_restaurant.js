
export const initBookmark = () => {

  const savedElement = document.getElementById('saved-restaurant-icon');
  if (savedElement) {

    savedElement.addEventListener("click", (event) => {
      console.log(savedElement)
      if (savedElement.classList.contains("far")) {
        savedElement.classList.remove("far")
        savedElement.classList.add("fas")
      } else {
        savedElement.classList.remove("fas")
        savedElement.classList.add("far")
      }

    });

  }
}
