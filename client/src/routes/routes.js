
export const routes = [

    // Index
    {
        path: '/', name: 'index', component: () => import('../components/pages/Login.vue'), meta: { requiredAuth: false }
    },
    {
        path: '/dashboard', name: 'dashboard', component: () => import('../components/pages/Dashboard.vue'), meta: { requiredAuth: true, role: 1 }
    },
    {
        path: '/sign-up', name: 'signup', component: () => import('../components/pages/SignUp.vue'), meta: { requiredAuth: true, role: 1 }
    },
    {
        path: '/home', name: 'home', component: () => import('../components/pages/Home.vue'), meta: { requiredAuth: true, role: 3 }
    },

    {
        path: '/staff-home', name: 'staff-home', component: () => import('../components/pages/StaffHome.vue'), meta: { requiredAuth: true, role: 2 }
    },

    // staff
    {
        path: '/staff', name: 'staff', component: () => import('../components/pages/Staff.vue'), meta: { requiredAuth: true, role: 1 }
    },
    {
        path: '/add-staff', name: 'add-staff', component: () => import('../components/pages/AddStaff.vue'), meta: { requiredAuth: true, role: 1 }
    },
    {
        path: '/staff-detail/:id', name: 'staff-detail', component: () => import('../components/pages/StaffDetail.vue'), meta: { requiredAuth: true, role: 1 }
    },
    {
        path: '/edit-staff/:id', name: 'edit-staff', component: () => import('../components/pages/EditStaff.vue'), meta: { requiredAuth: true, role: 1 }
    },
    {
        path: '/profile/:id', name: 'profile', component: () => import('../components/pages/Profile.vue'), meta: { requiredAuth: true, role: 3 }
    },
    {
        path: '/support', name: 'support', component: () => import('../components/pages/Support.vue'), meta: { requiredAuth: true, role: 3 }
    },

    // user
    {
        path: '/user', name: 'user', component: () => import('../components/pages/User.vue'), meta: { requiredAuth: true, role: 1 }
    },
    {
        path: '/edit-member/:id_member', name: 'edit-member', component: () => import('../components/pages/EditMember.vue'), meta: { requiredAuth: true, role: 1 }
    },


    // House
    {
        path: '/emptyhouse', name: 'emptyhouse', component: () => import('../components/pages/EmptyHouse.vue'), meta: { requiredAuth: true, role: 3 }
    },
    {
        path: '/listhouse', name: 'listhouse', component: () => import('../components/pages/ListHouse.vue'), meta: { requiredAuth: true, role: 1 }
    },
    {
        path: '/housedetail/:room/:id', name: 'housedetail', component: () => import('../components/pages/HouseDetail.vue'), meta: { requiredAuth: true, role: [1, 3] }
    },

    // Contract
    { path: '/list-contracts', name: 'list-constract', component: () => import('../components/pages/Contract.vue'), meta: { requiredAuth: true, role: 1 } },
    { path: '/contract-detail/:id', name: 'contract-detail', component: () => import('../components/pages/ContractDetail.vue'), meta: { requiredAuth: true, role: 1 } },
    { path: '/edit-contract/:id', name: 'edit-contract', component: () => import('../components/pages/ContractEdit.vue'), meta: { requiredAuth: true, role: 1 } },
    { path: '/add-contract', name: 'add-contract', component: () => import('../components/pages/AddContract.vue'), meta: { requiredAuth: true, role: 1 } },
    { path: '/add-contract/:id_room', name: 'add-contract-by-id', component: () => import('../components/pages/AddContract.vue'), meta: { requiredAuth: true, role: 1 } },

    // News
    {
        path: '/news-staff', name: 'news-staff', component: () => import('../components/pages/StaffNews.vue'), meta: { requiredAuth: true, role: 2 }
    },
    {
        path: '/news', name: 'news', component: () => import('../components/pages/News.vue'), meta: { requiredAuth: true, role: 3 }
    },
    {
        path: '/add-news', name: 'add-news', component: () => import('../components/pages/AddNews.vue'), meta: { requiredAuth: true, role: 2 }
    },
    // Payment Service
    {
        path: '/list-service', name: 'staff-payment', component: () => import('../components/pages/ListService.vue'), meta: { requiredAuth: true, role: 2 }
    },
    {
        path: '/payment/:room_name', name: 'payment', component: () => import('../components/pages/Payment.vue'), meta: { requiredAuth: true, role: [2, 3] }
    },


    {
        path: '/staff-salary', name: 'staff-salary', component: () => import('../components/pages/Salary.vue'), meta: { requiredAuth: true, role: 2 }
    },


    { path: '/statistics', name: 'statistics', component: () => import('../components/pages/Statistics.vue'), meta: { requiredAuth: true, role: 1 } },

    { path: '/*', name: 'error', component: () => import('../components/pages/ErrorPage.vue') }


]