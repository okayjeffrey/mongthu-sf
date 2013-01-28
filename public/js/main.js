jQuery(document).ready(function($) {
    
    var required = $('.ss-item-required')
    var requiredFields = $('.ss-item-required input, .ss-item-required select')
    var requiredItem = required.val()
    
    requiredFields.blur(function() {
        
        required.each(function(){
            var myValue = $(this).find('input, select').val()
        });
        
        var yourName = $('.ss-item-required #entry_2').val()
        var yourEmail = $('.ss-item-required #entry_3').val()
        var yourSize = $('.ss-item-required #entry_0').val()
        var yourLocation = $('.ss-item-required #entry_6').val()
        
        if(yourName == '' || yourEmail == '' || yourSize == '' || yourLocation == '' ) {
            $('#submitform').prop('disabled', true);
        } 
        else {
            $('#submitform').prop('disabled', false);
        }
        
    });
    
});