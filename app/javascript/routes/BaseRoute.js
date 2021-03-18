import New from "@/pages/users/New";

import PhaseRoute from "@/routes/PhaseRoute";
import UserRoute from "@/routes/UserRoute";

const baseRoutes = [{ path: "/", component: New, meta: { resource: "User" } }];

const routes = baseRoutes.concat(PhaseRoute, UserRoute);

export default routes;
