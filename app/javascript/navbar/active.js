export const initNavbarActive = () => {

 document.querySelectorAll(".app-navbar .item").forEach(item => {
    item.addEventListener("click", event => {

      document.querySelectorAll(".app-navbar .item.active").forEach(old => old.classList.remove("active"))

      event.currentTarget.classList.add("active")

    });

 });
}
