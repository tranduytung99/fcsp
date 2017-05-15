$(document).ready(function(){
  $('.bt-add-member').on('click',function(){
      $('.form_add_member').on('submit',function(e){
      e.preventDefault();
      e.stopImmediatePropagation();
      $.ajax({
        url: $('.form_add_member').attr('action'),
        type: 'POST',
        dataType: 'json',
        data: $(this).serialize(),
        success: function(result){
         $('.list-member').append(result.html_member);
        },
        error: function(result){
          alert(result.errors);
        }
    });
  });
  
  });

});