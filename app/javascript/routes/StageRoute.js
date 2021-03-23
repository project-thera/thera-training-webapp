import Index from "@/pages/stages/Index";

const stageRoutes = [
  {
    path: "/stages",
    name: "stages",
    component: Index,
    meta: { resource: "Stage", action: "show" },
  },
];

export default stageRoutes;
