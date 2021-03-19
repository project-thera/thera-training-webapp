<template>
  <div>
    <div>
      <p>
        ¡Fuiste seleccionado para participar en la fase final de un
        <strong>increíble proyecto</strong>!
      </p>
      <p>
        El profesor <strong>Alan Therapoulos</strong> es un reconocido
        científico e investigador especializado en
        <strong>Inteligencia Artificial</strong>. Desde hace años dirige la obra
        de su vida: el <strong>proyecto Thera</strong>, un androide imaginado
        como el asistente ideal para todas las actividades humanas.
      </p>
      <p>
        El proyecto está en su fase final, el robot está casi listo y sólo falta
        un último detalle:
        <strong
          >entrenarlo para que pueda comunicarse e interactuar con
          nosotros</strong
        >. Para esto el profesor ha diseñado un poderoso algoritmo que permite a
        <strong>Thera</strong> aprender de nuestros gestos y palabras.
      </p>
      <p>
        ¿Te gustaría formar parte de este equipo y
        <strong>ayudar al profesor a completar su proyecto</strong>? ¡Completá
        los siguientes campos con tu nombre y correo electrónico para
        participar!
      </p>
    </div>

    <ValidationObserver ref="observer" v-slot="{ handleSubmit }">
      <v-form
        ref="form"
        :action="$params.login.path"
        method="post"
        @submit.prevent="handleSubmit(onSubmit)"
      >
        <input name="utf8" type="hidden" value="✓" />
        <input type="hidden" name="authenticity_token" :value="$csrfToken" />

        <ValidationProvider v-slot="{ errors }" rules="required" vid="name">
          <v-text-field
            class="mb-4"
            type="text"
            id="user_name"
            name="user[name]"
            v-model="name"
            label="Nombre"
            required
            outlined
            :error-messages="errors"
            hide-details="auto"
          />
        </ValidationProvider>

        <ValidationProvider v-slot="{ errors }" rules="required" vid="email">
          <v-text-field
            class="mb-4"
            type="text"
            id="user_email"
            name="user[email]"
            v-model="email"
            label="Correo electrónico"
            required
            outlined
            :error-messages="errors"
            hide-details="auto"
          />
        </ValidationProvider>

        <v-btn color="primary" type="submit" block tile>¡Participar!</v-btn>
      </v-form>
    </ValidationObserver>
  </div>
</template>

<script>
export default {
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
