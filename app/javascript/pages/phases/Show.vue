<template>
  <div>
    <h1>phases/show</h1>

    <PhotoForm />
  </div>
</template>

<script>
import PhotoForm from "@/components/PhotoForm";

export default {
  // name: "LoginForm",
  components: {
    PhotoForm,
  },
  data: () => {
    return {
      name: null,
      email: null,
    };
  },
  methods: {
    async onSubmit() {
      if (await this.$refs.observer.validate()) {
        this.$refs.form.$el.submit();
      }
    },
  },
};
</script>