require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require.context("../stylesheets/images", true); // Підключаємо папку images

import "../stylesheets/application";
