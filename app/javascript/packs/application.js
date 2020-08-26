require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "../stylesheets/application";

require.context("../stylesheets/images", true); // Підключаємо папку images
