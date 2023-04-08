import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    console.log('hello from typed-js');

    new Typed(this.element, {
      strings: [
        'Bootstrap alread installed',
        'Front end already set up',
        'Ready to roll',
        'JS already configured'
      ],
      typeSpeed: 50,
      loop: true
    })
  }
}
