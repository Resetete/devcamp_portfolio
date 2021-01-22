// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require('jquery')
require("@rails/ujs").start()
require("jquery-ui")
require("@nathanvda/cocoon")
require("packs/html.sortable")
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import "@fortawesome/fontawesome-free/js/all"
import "jquery-ui"
import "jquery"
import 'packs/portfolios'
import 'channels/blogs'
import 'sweetalert2'
import "bootstrap"


// Drag and Drop functionality
$(
  () => {
    $('.sortable').sortable()
  }
)
