import Typed from 'packs/lib/typed.js';

$(document).on('turbolinks:load').ready(function() {
  var typed = new Typed('.typed', {
     stringsElement: '#typed-strings',
     typeSpeed: 40,
     smartBackspace: true,
     loop: true,
     loopCount: Infinity,
   });
});
