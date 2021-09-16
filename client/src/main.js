import Vue from 'vue'
import App from './App.vue'
import VueRouter from 'vue-router'
import { routes } from '../src/routes/routes'
import JwPagination from 'jw-vue-pagination';
import { store } from './store/store'
import VueApexCharts from 'vue-apexcharts'
import { isLoggedIn } from '../src/utils/auth'
Vue.component('jw-pagination', JwPagination);


Vue.config.productionTip = false

Vue.use(VueApexCharts)

Vue.component('apexchart', VueApexCharts)
Vue.use(VueRouter)
const router = new VueRouter({
  mode: 'history',
  routes,
})

router.beforeEach((to, _from, next) => {
  var auth = JSON.parse(localStorage.getItem('user'))
  if ( to.matched.some(record => record.meta.requiredAuth)  ) {

    if ( auth === null ){
      next('/page-to-show-for-unauthenticated-users');
    }else{
      if (isLoggedIn() && to.meta.role === auth.role) {
        next();
      }else if(to.meta.role.length > 0){
        next()
      }  else {
        next('/page-to-show-for-no-permission');
      }
    }

    
  } else {
    next(); // make sure to always call next()!
  }

})

new Vue({
  render: h => h(App),
  router,
  store,
}).$mount('#app')
