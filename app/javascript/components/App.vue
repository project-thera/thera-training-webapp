<template>
  <v-app>
    <v-main>
      <v-container class="ps-4">
        <v-row>
          <v-col
            cols="12"
            sm="10"
            offset-sm="1"
            md="10"
            offset-md="1"
            lg="8"
            offset-lg="2"
            xl="6"
            offset-xl="3"
          >
            <h1>Proyecto Thera</h1>
            <router-view />
          </v-col>
        </v-row>
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
export default {
  name: "App",
  data() {
    return {};
  },
};
</script>

<style lang="scss" scoped>
@import "@/assets/stylesheets/_variables.scss";
@import "@/assets/stylesheets/application.scss";

h1 {
  font-family: $primary-font-family !important;
}

.v-application {
  font-family: $secondary-font-family !important;
}
</style>
