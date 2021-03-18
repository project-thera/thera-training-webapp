import Vue from "vue";
import VueRouter from "vue-router";
import BaseRoute from "@/routes/BaseRoute";

Vue.use(VueRouter);

const router = new VueRouter({
  routes: BaseRoute,
  mode: "history",
});

export default router;
