const previewImageOnFileSelect = () => {
  // we select the photo input
  const input = document.getElementById('photo-input');
  if (input) {

    // we add a listener to know when a new picture is uploaded
    input.addEventListener('change', () => {
      // we call the displayPreview function (who retrieve the image url and display it)
      console.log("change");
      displayPreview(input);
      for(var i = 0; i < input.files.length; i++){
        displayPreview(input, i);
    }
    })
  }
}


const sendImageOnFileSelect = () => {
  // we select the photo input
  const image = document.getElementById('message-image');
  if (image) {

    // we add a listener to know when a new picture is uploaded
    image.addEventListener('change', () => {
      // we call the displayPreview function (who retrieve the image url and display it)
      const submitButton = document.getElementById('submit-message');
      console.log("here");
      submitButton.click();
      image.value = "";
    })
  }
}

const displayPreview = (input, i) => {
  if (input.files && input.files[i]) {
    var reader = new FileReader();
    const photoPreviews = document.querySelector('.photo-previews');
    reader.onload = (event) => {
      console.log(input.files);
      //document.getElementById('photo-preview').src = event.currentTarget.result;
      photoPreviews.insertAdjacentHTML('beforeend', `<img width="150" id="photo-preview" src="${event.currentTarget.result}" >` );
    }
    reader.readAsDataURL(input.files[i])
    document.getElementById('photo-preview').classList.remove('hidden');

  }
}

export { previewImageOnFileSelect, sendImageOnFileSelect };
