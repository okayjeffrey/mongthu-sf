$(document).ready(function() {
    // $('.tooltip').tooltipster();
    
    $('.tooltip').tooltipster({
       animation: 'fade',
       delay: 200,
       onlyOne: true,
       position: 'right',
       theme: '.tooltipster-light',
       touchDevices: true,
       trigger: 'hover'
    });
    
});