<template>
  <div>
    <v-card>
      <v-card-text>
        <v-img class="mb-4" :src="require('assets/images/thankyou.gif')" />
        <h1 class="mb-4" id="thankyou">¡Completaste el circuito!</h1>
        <p>
          Tu participación es fundamental para el éxito de este proyecto.
          Recordá que podés volver a realizar el circuito con nuevas fotos, en
          distintos momentos del día o con distinta iluminación, para mejorar el
          entrenamiento del android Thera.
        </p>
        <p><strong>¡Muchas gracias por participar!</strong></p>
        <v-btn color="info" block @click="$router.push({ name: 'root' })">Volver al inicio</v-btn>
      </v-card-text>
    </v-card>
  </div>
</template>

<style lang="scss" scoped>
@import "@/assets/stylesheets/_variables.scss";

h1#thankyou {
  font-family: $primary-font-family !important;
}
</style>
