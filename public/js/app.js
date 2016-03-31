$(document).ready(function() {
  console.log('lol')

  $('#carousel-example-generic').carousel({
       interval: 2000
   })

});

function readURL(input) {
       if (input.files && input.files[0]) {
           var reader = new FileReader();

           reader.onload = function (e) {
               $("#myImage").val(e.target.result)

              console.log($('#myImage').val())
           };

           reader.readAsDataURL(input.files[0]);
       }
   }
