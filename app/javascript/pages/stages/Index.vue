<template>
  <div>
    <youtube video-id="WS5md4v5srg" width="100%" :resize="true" />
    <div v-if="stages">
      <v-stepper v-model="currentStep" vertical>
        <template v-for="stage in stages">
          <v-stepper-step
            :complete="currentStep > stage.id"
            :step="stage.id"
            :key="`${stage.id}-step`"
            editable
          >
            <span class="text-h5">{{ stage.name }}</span>
          </v-stepper-step>
          <v-stepper-content :step="stage.id" :key="`${stage.id}-content`">
            <PhotoForm :stage="stage" v-if="currentStep == stage.id" />
          </v-stepper-content>
        </template>
      </v-stepper>
    </div>
  </div>
</template>

<script>
import PhotoForm from "@/components/PhotoForm";

export default {
  components: {
    PhotoForm,
  },
  data: () => {
    return {
      stages: null,
      step: 1,
      showDescription: false,
      showYouTubePlayer: false,
    };
  },
  computed: {
    // https://stackoverflow.com/questions/50260260/vuejs-variable-is-undefined-inside-computed-only
    currentStep: {
      get: function() {
        return this.step;
      },
      set: function(step) {
        if (step > this.stages.length) this.$router.push({ name: 'thank-you' });

        this.step = step;
      }
    }
  },
  created() {
    this.$bus.$on("stage-completed", this.nextStep);
    this.loadExercises();
  },
  methods: {
    nextStep(step) {
      if (step === this.stages.size) {
        this.currentStep = 1;
      } else {
        this.currentStep = step + 1;
      }
    },
    async loadExercises() {
      this.$axios
        .get("/stages.json")
        .then((response) => {
          this.stages = response.data;
        })
        .catch((error) => {
          console.log("error");
        });
    },
  },
};
</script>
