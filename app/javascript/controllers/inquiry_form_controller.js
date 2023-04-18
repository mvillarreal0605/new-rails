import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="inquiry-form"
export default class extends Controller {
  connect() {
    console.log('hello from inquiry form controller');

    const firstName = document.querySelectorAll('.inquiry_first_name');
    const lastName  = document.querySelectorAll('.inquiry_last_name');
    const interest  = document.querySelectorAll('.inquiry_interest');
    const email     = document.querySelectorAll('.inquiry_email');

    firstName[0].insertAdjacentHTML('beforeend', "<div class='invalid-feedback'>First name is required</div>");
    lastName[0].insertAdjacentHTML('beforeend', "<div class='invalid-feedback'>Last name is required</div>");
    interest[0].insertAdjacentHTML('beforeend', "<div class='invalid-feedback'>Interest is required</div>");
    email[0].insertAdjacentHTML('beforeend', "<div class='invalid-feedback'>A valid email is required</div>");

    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (() => {
      'use strict'

      // Fetch all the forms we want to apply custom Bootstrap validation styles to
      const forms = document.querySelectorAll('.needs-validation')

      // Loop over them and prevent submission
      Array.from(forms).forEach(form => {
        form.addEventListener('submit', event => {
          if (!form.checkValidity()) {
            event.preventDefault()
            event.stopPropagation()
          }

          form.classList.add('was-validated')
        }, false)
      })
    })()
  }
}
