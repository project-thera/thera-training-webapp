<template>
  <div>
    <v-stepper-step
      :complete="currentStep > step"
      :step="step"
      :key="`${i}-step`"
    >
      <span class="text-h5">{{ stage.name }}</span>
    </v-stepper-step>
    <v-stepper-content :step="step" :key="`${i}-content`">
      <p>{{ stage.description }}</p>
      <v-card color="grey lighten-1" class="mb-4" height="200px"></v-card>
      <PhotoForm :stageId="stage.id" :step="step" />
    </v-stepper-content>
  </div>           
</template>