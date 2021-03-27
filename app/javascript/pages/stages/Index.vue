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
            <p>{{ stage.description }}</p>
            <youtube
              :video-id="stage.video_id"
              width="100%"
              v-if="stage.video_id"
              ref="youtube"
            />
            <PhotoForm :stageId="stage.id" :step="stage.id" />
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
      currentStep: 1,
    };
  },
  created() {
    this.$bus.$on("stage-completed", this.nextStep);
    this.loadExercises();
  },
  methods: {
    nextStep(step) {
      this.$refs.youtube.map((youtube) => { youtube.player.stopVideo() });

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
