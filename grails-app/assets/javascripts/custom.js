$( document ).ready( function() {
	
  $('.phone').text(function(i, text) {
	 return text.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
  });
  
  $('div.candidateFilter').delegate('input[type=checkbox]', 'change', function()
  {
      var $lis = $('.results > li'),
          $checked = $('input:checked');

      if ($checked.length)
     {
          var selector = $checked.map(function ()
          {
              return '.' + $(this).attr('rel');
          }).get().join('');
    
          $lis.hide().filter(selector).show();     
      }
      else
      {
          $lis.show();
      }
  });
});

function enableCreateButton() {
	$('#create-client-button').prop('disabled', false);
}