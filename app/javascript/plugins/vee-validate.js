import Vue from "vue";
import { ValidationObserver, ValidationProvider } from "vee-validate";

import {
  required,
  email,
  ext,
  min_value,
  max_value,
} from "vee-validate/dist/rules";

import { extend } from "vee-validate";

Vue.component("ValidationObserver", ValidationObserver);
Vue.component("ValidationProvider", ValidationProvider);

extend("ext", {
  ...ext,
  message: "no es un tipo de archivo permitido",
});

extend("min_value", {
  ...min_value,
  message: "valor no permitido",
});

extend("max_value", {
  ...max_value,
  message: "valor no permitido",
});

extend("numeric", {
  ...ext,
  message: "debe ser un número",
});

// extend('ext', ext)

extend("required", {
  ...required,
  message: "no puede estar en blanco",
});

// extend('dossierNumber', value => {
//   const pattern = /EX-(?<year>\d{4})-(?<number>\d{0,8})-(( )?-)?GDEBA-(?<organization>\w+)/
//   return pattern.test(value) || 'No corresponde a un número de expediente.'
// });

extend("email", {
  ...email,
  message: "debe ser un email válido",
});

// extend("confirmed", {
//   ...confirmed,
//   message: "This field confirmation does not match"
// });

// extend("length", {
//   ...length,
//   message: "This field must have 2 options"
// });
