<template>
  <div>
    <ValidationObserver ref="observer" v-slot="{ handleSubmit }">
      <v-form
        ref="form"
        :action="$params.photos.routes.create"
        method="post"
        @submit.prevent="handleSubmit(onSubmit)"
      >
        <input name="utf8" type="hidden" value="✓" />
        <input type="hidden" name="authenticity_token" :value="$csrfToken" />

        <input
          id="photo_stage_id"
          name="photo[stage_id]"
          type="hidden"
          :value="stageId"
        />
        <input
          id="photo_photo"
          name="photo[photo]"
          type="file"
          accept="image/*"
          capture="user"
          class="d-none"
          ref="photoInput"
          @change="cameraTriggered()"
        />

        <v-alert v-if="photoLoaded" type="info"
          >Foto cargada. ¡Presioná ENVIAR TU FOTO para que podamos
          procesarla!</v-alert
        >

        <v-alert v-if="!photoTaken" type="warning"
          >¡No olvides tomar tu foto!</v-alert
        >

        <v-alert v-if="hasError" type="error"
          >Ocurrió un error al enviar su foto. Por favor, intente nuevamente más
          tarde.</v-alert
        >

        <v-btn
          class="primary mb-2"
          block
          @click="takePhoto()"
          :disabled="loading"
          >Tomá tu foto</v-btn
        >
        <v-btn type="submit" class="primary mb-2" block :loading="loading"
          >¡Enviá tu foto!</v-btn
        >
        <v-btn text block @click="nextPhoto()">Omitir</v-btn>
      </v-form>
    </ValidationObserver>
  </div>
</template>

<script>
export default {
  name: "PhotoForm",
  data: () => {
    return {
      photoTaken: true,
      photoLoaded: false,
      hasError: false,
      loading: false,
    };
  },
  props: {
    stageId: {
      type: Number,
      required: true,
    },
    step: {
      type: Number,
      required: true,
    },
  },
  methods: {
    nextPhoto() {
      this.$bus.$emit("stage-completed", this.step);
    },
    takePhoto() {
      this.$refs.photoInput.click();
    },
    cameraTriggered() {
      this.photoLoaded = this.$refs.photoInput.value.length > 0;
    },
    async onSubmit() {
      let formData = new FormData(this.$refs.form.$el);

      this.photoTaken = this.$refs.photoInput.value.length > 0;

      if (this.photoTaken) {
        this.loading = true;

        this.$axios({
          method: "POST",
          url: this.$params.photos.routes.create,
          data: formData,
          headers: {
            "Content-Type": false,
            processData: false,
          },
        })
          .then((response) => {
            this.$bus.$emit("stage-completed", this.step);
            this.loading = false;
          })
          .catch((error) => {
            this.hasError = true;
            this.loading = false;
          });
      }
    },
  },
};
</script>
