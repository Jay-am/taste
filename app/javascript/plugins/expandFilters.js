const expandFilters = () => {
  const showMoreBtns = document.querySelectorAll('.show-more-btn');

  showMoreBtns.forEach(btn => {
    let expanded = false

    btn.addEventListener('click', (e) => {
      e.preventDefault()
      const filtersContainer = btn.parentNode

      if (expanded) {
        const elementsToHide = filtersContainer.querySelectorAll('.hide-when-collapsed')

        elementsToHide.forEach(el => {
          el.classList.add('d-none')
          el.classList.remove('hide-when-collapsed')
        })

        btn.innerText = 'Show More'

        expanded = false
      } else {
        const hiddenElements = filtersContainer.querySelectorAll('.d-none')

        hiddenElements.forEach(el => {
          el.classList.remove('d-none')
          el.classList.add('hide-when-collapsed')
        })

        btn.innerText = 'Show Less'

        expanded = true
      }
    })
  })
}

export { expandFilters }
