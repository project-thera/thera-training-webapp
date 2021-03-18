import New from "@/pages/users/New";

const userRoutes = [
  {
    path: "/users/new",
    name: "users-new",
    component: New,
    meta: { resource: "User", action: "create" },
  },
];

export default userRoutes;
