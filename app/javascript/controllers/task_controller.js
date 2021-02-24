import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static targets = ['input']

  create(e) {
    e.preventDefault()

    this.stimulate('TaskReflex#create').then(() => {
      this.element.reset()
      this.inputTarget.focus()
    })
  }
}
