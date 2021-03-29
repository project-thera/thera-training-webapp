<template>
  <div>
    <v-form
      ref="form"
      action="/photos"
      method="post"
      @submit.prevent="onSubmit"
    >
      <input name="utf8" type="hidden" value="✓" />
      <input type="hidden" name="authenticity_token" :value="$csrfToken" />

      <input
        id="photo_stage_id"
        name="photo[stage_id]"
        type="hidden"
        :value="stage.id"
      />

      <input
        id="photo_photo"
        name="photo[photo]"
        type="file"
        accept="image/*"
        capture="user"
        class="d-none"
        ref="photoInput"
        @change="evalPhoto()"
      />

      <youtube
        class="mb-2"
        :video-id="stage.video_id"
        width="100%"
        v-if="stage.video_id"
        :ref="`${stage.id}-youtube`"
      />

      <p class="mb-2 text-justify" v-if="!photoUploaded && showDescription">
        {{ stage.description }}
      </p>

      <v-alert type="success" class="mb-2" v-if="photoUploaded" 
        >¡Muchas gracias! Recibimos tu foto, presioná el botón SIGUIENTE para
        avanzar a la siguiente etapa.</v-alert
      >

      <v-alert type="info" class="mb-2" v-if="photoLoaded && !photoUploaded"
        >Foto cargada. ¡Presioná ENVIAR TU FOTO para que podamos
        procesarla!</v-alert
      >

      <v-alert type="error" class="mb-2" v-if="uploadError"
        >Ocurrió un error al enviar su foto. Por favor, intente nuevamente más
        tarde.</v-alert
      >

      <v-row no-gutters>
        <v-col cols="12" class="pb-2" v-if="!photoUploaded">
          <v-btn
            text block
            v-if="!photoUploaded && !showDescription"
            @click="showDescription = true"
            ><v-icon left>{{ $vuetify.icons.values.commentText }}</v-icon
            >Ver descripción</v-btn
          >
        </v-col>
        <v-col cols="12" sm="6" class="pb-2" v-if="!photoUploaded">
          <v-btn
            class="primary"
            large block
            @click="takePhoto()"
            :disabled="loading"
            ><v-icon left>{{ $vuetify.icons.values.camera }}</v-icon
            >¡Tomá tu foto</v-btn
          >
        </v-col>
        <v-col cols="12" sm="6" class="pb-2 pl-sm-4" v-if="!photoUploaded">
          <v-btn
            type="submit"
            class="primary"
            large block
            :loading="loading"
            :disabled="!photoLoaded"
            ><v-icon left>{{ $vuetify.icons.values.cloudUpload }}</v-icon
            >¡Enviá tu foto!</v-btn
          >
        </v-col>
        <v-col cols="12" class="pb-2">
          <v-btn
            color="error"
            outlined block
            v-if="!photoUploaded"
            @click="nextPhoto()"
            ><v-icon left>{{ $vuetify.icons.values.cancel }}</v-icon
            >Omitir</v-btn
          >
          <v-btn color="success" large block v-if="photoUploaded" @click="nextPhoto()"
            >Siguiente<v-icon right>{{
              $vuetify.icons.values.chevronRight
            }}</v-icon></v-btn
          >
        </v-col>
      </v-row>
    </v-form>
  </div>
</template>

<script>
export default {
  name: "PhotoForm",
  data: () => {
    return {
      photoLoaded: false,
      photoUploaded: false,
      uploadError: false,
      loading: false,
      showDescription: false,
      showYouTubePlayer: false,
    };
  },
  props: {
    stage: {
      type: Object,
      required: true,
    },
  },
  methods: {
    nextPhoto() {
      this.$bus.$emit("stage-completed", this.stage.id);
    },
    takePhoto() {
      this.$refs.photoInput.click();
    },
    evalPhoto() {
      this.photoLoaded = this.$refs.photoInput.value.length > 0;
    },
    async onSubmit() {
      let formData = new FormData(this.$refs.form.$el);

      if (this.photoLoaded) {
        this.loading = true;

        this.$axios({
          method: "POST",
          url: "/photos",
          data: formData,
          headers: {
            "Content-Type": false,
            processData: false,
          },
        })
          .then((response) => {
            this.photoUploaded = true;
          })
          .catch((error) => {
            this.photoLoaded = false;
            this.uploadError = true;
          })
          .then(() => {
            this.loading = false;
          });
      }
    },
  },
};
</script>
