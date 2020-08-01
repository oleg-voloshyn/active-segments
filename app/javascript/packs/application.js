// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

if ($("#table-1").length) {
  var tableOffset = $("#table-1").offset().top;
  var $header = $("#table-1 > thead").clone();
  var $fixedHeader = $("#header-fixed").append($header);

  $(window).bind("scroll", function() {
      var offset = $(this).scrollTop();

      if (offset >= tableOffset && $fixedHeader.is(":hidden")) {
          $fixedHeader.show();
      }
      else if (offset < tableOffset) {
          $fixedHeader.hide();
      }
  });
}
