import { Controller } from "@hotwired/stimulus"

// Connects to data-controller='navbar'
export default class extends Controller {
  connect() {
    console.log('hello from navbar controller');
  }

  updateNavbar() {
    if (window.scrollY >= window.innerHeight) {
      this.element.classList.add('navbar-lewagon-white');
      this.element.classList.remove('navbar-dark');
    } else {
      this.element.classList.remove('navbar-lewagon-white');
      this.element.classList.add('navbar-dark');
    }
  }
}
