<template>
  <div>
    <h1>phases/show</h1>

    <div v-if="stages">
      <v-stepper v-model="e1" vertical>
        <template v-for="(stage, i) in stages">
          <v-stepper-step :complete="e1 > i + 1" :step="i + 1" :key="`${i}-step`">
            <span class="text-h5">{{ stage.name }}</span>
          </v-stepper-step>
          <v-stepper-content :step="i + 1" :key="`${i}-content`">

            <p>{{ stage.description }}</p>
            <v-card color="grey lighten-1"
            class="mb-4" height="200px"></v-card>

            <PhotoForm :stageId="stage.id" />

            <div>
              <v-btn text>Cancel</v-btn>
              <spacer />
              <v-btn class="text-right" color="primary" @click="nextStep(i + 1)">Continue</v-btn>
            </div>
          </v-stepper-content>
        </template>
      </v-stepper>
    </div>
  </div>
</template>

<script>
import ExerciseView from "@/components/ExerciseView";

export default {
  // name: "LoginForm",
  components: {
    ExerciseView,
  },
  data: () => {
    return {
      stages: null,
      e1: 1,
    };
  },
  created() {
    this.loadExercises();
  },
  methods: {
    nextStep(i) {
      if (i === this.stages.size) {
        this.e1 = 1;
      } else {
        this.e1 = i + 1;
      }
    },
    async loadExercises() {
      const params = this.$route.params;

      this.$axios
        .get("/phases/1/exercises.json")
        .then((response) => {
          let phase = response.data;
          let stages = [];

          phase.exercises.forEach((exercise) => {
            exercise.stages.forEach((stage) => stages.push(stage));
          });

          this.stages = stages;
        })
        .catch((error) => {
          console.log("error");
        });

      // this.announcements = await AnnouncementResource.list(
      //   this.$store.state.filters.adminAnnouncements
      // )
    },
  },
};
</script>
