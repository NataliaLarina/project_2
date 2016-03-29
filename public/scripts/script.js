$(document).ready(function(){

console.log('window is loaded')

$( '#category' ).change(function() { //event listener for change in drop down menu
    console.log('changed');

    if ($(this, ':selected').val() === 'none') { //.this refers to the drop down menu selector
      alert('Please select a category');
      return false;
    }

$('#form_brand').on('click', function(event) {
    event.preventDefault();
    console.log('test')
    //answers.artist = $('#artist').val().trim();
    console.log(answers);
