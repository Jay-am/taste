const toggleCheckboxState = () => {
  const filters = document.querySelector("#filters-accordion")

  if (filters) {
    const labels = document.querySelectorAll('.custom-checkbox > label')

    labels.forEach(label => {
      label.addEventListener('click', () => {
        const input = label.parentNode.querySelector('input')
        const checked = input.checked

        input.checked = !checked
      })
    })
  }
}

export { toggleCheckboxState }
