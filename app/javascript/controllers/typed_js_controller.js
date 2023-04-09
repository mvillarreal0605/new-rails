import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    console.log('hello from typed-js');

    new Typed(this.element, {
      strings: [
        'Bootstrap',
        'SCSS',
        'Stimulus JS',
        'Import Maps',
        'Rails 7.0.4',
        'Ruby 3.1.2'
      ],
      typeSpeed: 50,
      loop: true
    })
  }
}
