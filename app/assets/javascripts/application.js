// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// using context

$('.ui.sidebar').sidebar({
  context: $('.bottom.segment')
}).sidebar('attach events', '.menu .item.sidebar-toggler');


$('.accordion').accordion({
  selector: {
    trigger: '.title p'
  }
});

$('.special.cards .image').dimmer({
  on: 'hover'
});

$('.ui.sticky').sticky();

$('.message .close').on('click', function() {
  $(this).closest('.message').transition('fade')
});

// $('.ui.modal').modal('attach events', '.modal-button', 'show');
// $('.ui.modal').modal({inverted: false}).modal('show');
