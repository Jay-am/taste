const toggleCheckboxState = () => {
  const labels = document.querySelectorAll('.form-group > label')

  labels.forEach(label => {
    label.addEventListener('click', () => {
      const input = label.parentNode.querySelector('input')
      const checked = input.checked

      input.checked = !checked
    })
  })
}

export { toggleCheckboxState }
