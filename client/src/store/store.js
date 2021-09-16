import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

const auth = JSON.parse(localStorage.getItem('user'))

export const store = new Vuex.Store({
    state: {
        authenticated: auth === null ? false: true,
        role: auth ? auth.role : null
        // set state bang localStorage 
        // set trong localStorage: neu co thi reload van duoc voi expiration
        // cua token....con khi bam logout thi xoa trong localstorage
    },
    mutations: {
        setAuthentication(state, role, status) {
            state.authenticated = status;
            state.role = role
        },
    }

})