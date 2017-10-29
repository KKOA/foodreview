$(document).ready(function(){
  function readURL(input) {

    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function(e) {
        console.log(e.target.result);
        $('#imgPreview').attr('src', e.target.result).width(150);
      }

      reader.readAsDataURL(input.files[0]);
    }
  }

  $("#file").change(function() {
    readURL(this);
  });
});
