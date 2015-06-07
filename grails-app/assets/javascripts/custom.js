$( document ).ready( function() {
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
