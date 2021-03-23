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
        />

        <v-btn class="primary mb-2" block @click="takePhoto()">Tomá tu foto</v-btn>
        <v-btn type="submit" class="primary mb-2" block>¡Enviá tu foto!</v-btn>
      </v-form>
    </ValidationObserver>
  </div>
</template>

<script>
export default {
  name: "PhotoForm",
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
    takePhoto() {
      this.$refs.photoInput.click()
    },
    async onSubmit() {
      let formData = new FormData(this.$refs.form.$el);

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
        })
        .catch((error) => {
          console.log("error");
        });

      // console.log(new FormData(this.$refs.form.$el));
      // if (await this.$refs.observer.validate()) {
      // this.$refs.form.$el.submit();
      // }
    },
  },
};
</script>
