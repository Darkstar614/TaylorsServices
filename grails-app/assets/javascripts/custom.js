$( document ).ready( function() {
	
  $('.phone').text(function(i, text) {
	 return text.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
  });
  
  $('#create-entity-button').hide();
  
  $('div.candidateFilter').delegate('input[type=checkbox]', 'change', function()
  {
      var $lis = $('.results > li'),
          $checked = $('.candidateFilter input:checked');

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

function validateUserPass() {
	if ($('#username-fail').length) {
		$('#create-entity-button').prop('disabled', true);			
		if (!validatePassword()) {
			$('#password-error').html('<p>Invalid Password. Must be alphanumeric and between 5 and 15 characters</p>');
		}
	}
	if ($('#username-success').length) {
		if (validatePassword()) {
			$('#create-entity-button').prop('disabled', false);
			$('#create-entity-button').show();
			$('#dummy-create-entity').hide();
			$('#password-error').html('')
		}else{
			$('#create-entity-button').prop('disabled', true);
			$('#password-error').html('<p>Invalid Password. Must be alphanumeric and between 5 and 15 characters</p>');
		}
	}
}

function validatePassword() {
	var pattern = /^[a-zA-Z0-9_-]{5,15}$/;
	if(pattern.test($('.password').val())){
		return true;
	}else{
	    return false;
	}
}

function enableDummyButton() {
	$('#dummy-create-entity').prop('disabled', false);
	$('#create-entity-button').hide();
	$('#dummy-entity-client').show();
}