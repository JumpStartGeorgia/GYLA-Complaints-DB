$(function ()
{




  window.nestedFormEvents.insertFields = function(content, assoc, link) {
    return $(link).parent().before($(content).html($(content).find(':input[type="hidden"][name*="field_type"]').val($(link).data('fieldType')).end()));
  }


  //$('.datetimepicker').datepicker();

});
