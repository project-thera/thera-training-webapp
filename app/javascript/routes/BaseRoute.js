import Index from "@/pages/stages/Index";
import ThankYou from "@/pages/stages/ThankYou";
import New from "@/pages/users/New";

const routes = [
  { path: "/", name: 'root', component: New },
  { path: "/inicio", name: 'login', component: New },
  { path: "/training", name: 'training', component: Index },
  { path: "/muchas-gracias-por-participar", name: 'thank-you', component: ThankYou },
];

export default routes;
