require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require.context("../stylesheets/images", true); // Підключаємо папку images

import "../stylesheets/application";

import "bootstrap";

document.addEventListener("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})

import "./components/easydrop"
import "./components/flexs"
import "./components/jquery.easydropdown"
import "./components/jquery.flexslider"
import "./components/mem"
import "./components/memenu"
import "./components/typeahead.bundle"
import "./components/my"
import "./components/simpleCart.min"
