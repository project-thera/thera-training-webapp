import New from "@/pages/users/New";

import StageRoute from "@/routes/StageRoute";
import UserRoute from "@/routes/UserRoute";

const baseRoutes = [{ path: "/", component: New, meta: { resource: "User" } }];

const routes = baseRoutes.concat(StageRoute, UserRoute);

export default routes;
