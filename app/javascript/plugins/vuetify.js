import Vue from "vue";
import Vuetify from "vuetify";

import "vuetify/dist/vuetify.min.css";
// import '@mdi/font/css/materialdesignicons.css'

Vue.use(Vuetify);

// https://vuetifyjs.com/en/features/icons/#reusable-custom-icons
// https://github.com/vuetifyjs/vuetify/blob/master/packages/vuetify/src/services/icons/presets/mdi-svg.ts

import { mdiCamera, mdiCancel, mdiChevronRight, mdiCloudUpload, mdiCommentText } from "@mdi/js";

export default new Vuetify({
  icons: {
    // iconfont: 'mdi', // default - only for display purposes
    iconfont: "mdiSvg",
    values: {
      camera: mdiCamera,
      cancel: mdiCancel,
      chevronRight: mdiChevronRight,
      cloudUpload: mdiCloudUpload,
      commentText: mdiCommentText,
    },
  },
  theme: {
    themes: {
      light: {
        primary: "#089de3",
      },
    },
  },
});
