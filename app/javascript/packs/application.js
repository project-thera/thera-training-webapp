// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import * as ActiveStorage from "@rails/activestorage";
import "channels";

Rails.start();
ActiveStorage.start();

import Vue from "vue";

import App from "@/components/App";

import axios from "@/plugins/axios";
import routes from "@/plugins/routes";
import vuetify from "@/plugins/vuetify";

import "@/plugins/autoloading";
import "@/plugins/bus";
import "@/plugins/vee-validate";
import "@/plugins/youtube-embed";

// Use packages
Vue.config.productionTip = false;
Vue.prototype.$axios = axios;

document.addEventListener("DOMContentLoaded", () => {
  var dataset = document.getElementById("app").dataset;

  if (dataset.hasOwnProperty("params")) {
    Vue.prototype.$params = JSON.parse(dataset.params);
  }

  if (dataset.hasOwnProperty("flash")) {
    Vue.prototype.$flash = JSON.parse(dataset.flash);
  }

  Vue.prototype.$csrfToken = document.querySelector(
    '[name="csrf-token"]'
  ).content;

  const app = new Vue({
    vuetify,
    router: routes,
    render: (h) => h(App),
  }).$mount("#app");

  document.body.appendChild(app.$el);
});
