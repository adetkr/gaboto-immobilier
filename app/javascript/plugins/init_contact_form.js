
import { fetchWithToken } from "../utils/fetch_with_token";

const initContactForm = () => {
  const contact_form_button = document.getElementById('contact');

  if (contact_form_button) {


    contact_form_button.addEventListener('click', (event)=> {
      const flatId = contact_form_button.dataset.flatId;
      const name = document.getElementById('contact_name');
      const number = document.getElementById('contact_number');
      const email = document.getElementById('contact_email');
      const message = document.getElementById('contact_message');
      fetchWithToken("/contacts", {
        method: "POST",
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify({ contact: { flat_id: flatId,  name: name.value, number: number.value , email: email.value , message: message.value}})
      })
      .then(response => response.json())
      .then((data) => {


        const contactForm = document.getElementById('new_contact');
        contactForm.innerHTML = data.content
        if (data.success) {

          $('#SuccessModal').modal('show');

        }

      })
      .then((error) => {
        console.log(error);
      });

    });


  }

};





export { initContactForm };
