<template>
  <div>
    <div v-if="stages">
      <v-stepper v-model="currentStep" vertical>
        <template v-for="stage in stages">
          <v-stepper-step
            :complete="currentStep > stage.id"
            :step="stage.id"
            :key="`${stage.id}-step`"
          >
            <span class="text-h5">{{ stage.name }}</span>
          </v-stepper-step>
          <v-stepper-content :step="stage.id" :key="`${stage.id}-content`">
            <p>{{ stage.description }}</p>
            <youtube
              :video-id="$youtube.getIdFromURL(stage.video_link)"
              player-width="100%"
              v-if="stage.video_link"
            />
            <PhotoForm :stageId="stage.id" :step="stage.id" />
          </v-stepper-content>
        </template>
      </v-stepper>
    </div>
  </div>
</template>

<script>
import ExerciseView from "@/components/ExerciseView";
import PhotoForm from "@/components/PhotoForm";

export default {
  components: {
    ExerciseView,
    PhotoForm,
  },
  data: () => {
    return {
      stages: null,
      currentStep: 1,
    };
  },
  created() {
    this.$bus.$on("stage-completed", this.nextStep);
    this.loadExercises();
  },
  methods: {
    eventhappened(params) {
      console.log(params);
    },
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
