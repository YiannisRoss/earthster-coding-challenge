import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['content', 'popup']
  static classes = ['hidden']

  connect() {

    this.popupTarget.openModal = this.open.bind(this);
    this.popupTarget.closeModal = this.close.bind(this)
    this.isOpen = !this.popupTarget.classList.contains(this.hiddenClass);
  }

  close() {
    this.isOpen = false;
    this.popupTarget.classList.add(this.hiddenClass)
  }

  open() {
    if (this.isOpen) return;
    this.isOpen = true;
    this.popupTarget.classList.remove(this.hiddenClass)
  }
}
