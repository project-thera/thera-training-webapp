import Show from "@/pages/phases/Show";

const phaseRoutes = [
  {
    path: "/phases/:id",
    name: "phases-show",
    component: Show,
    meta: { resource: "Phase", action: "show" },
  },
];

export default phaseRoutes;
