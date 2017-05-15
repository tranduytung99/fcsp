$(document).ready(function(){
 
 $( function() {

    $( "#tags" ).autocomplete({
      source: "/search_user",
       minLength: 1
    });

  } );

});