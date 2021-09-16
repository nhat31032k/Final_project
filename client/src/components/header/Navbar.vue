<template>
  <div class="Header">
    <!-- ======= Header/Navbar ======= -->
    <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
      <div class="container">
        <router-link class="navbar-brand text-brand" v-if="$store.state.role === 3" to="/home"
          >Gia Lai <span class="color-b">Hoàng Anh</span></router-link
        >
        <router-link class="navbar-brand text-brand"  v-if="$store.state.role === 2" to="/staff-home"
          >Gia Lai <span class="color-b">Hoàng Anh</span></router-link
        >

        <div
          class="navbar-collapse collapse justify-content-center"
          id="navbarDefault"
        >
          <ul class="navbar-nav" v-if="$store.state.role === 3">
            <navbar-item
              v-for="item in listTitleUser"
              :key="item.id"
              :item="item"
            />
          </ul>
          <ul class="navbar-nav" v-if="$store.state.role === 2">
            <navbar-item
              v-for="item in listTitleStaff"
              :key="item.id"
              :item="item"
            />
          </ul>
        </div>
        
        <button v-if="$store.state.role === 3 || $store.state.role === 2" class="btn btn-danger" @click="logOut">
          <i class="fas fa-sign-out-alt"></i>
        </button>
        <button v-else class="btn btn-primary" @click="returnDashboard">
          <i class="fas fa-th-large"> Return dashboard</i>
        </button>
        
      </div>
    </nav>
    <!-- End Header/Navbar -->
  </div>
</template>

<script>
import NavbarItem from "./components/NavbarItem";
export default {
  name: "navbar",
  data() {
    return {
      listTitleUser: [
        { id: 1, title: "Trang chủ", to: "/home" },
        { id: 2, title: "Căn hộ trống", to: "/emptyhouse" },
        { id: 3, title: "Tin tức", to: "/news" },
        { id: 4, title: "Thanh toán", to: `/payment/${JSON.parse(localStorage.getItem('user')).username}` },
        { id: 5, title: "Hỗ trợ", to: "/support" },
      ],
      listTitleStaff: [
        { id: 1, title: "Trang chủ", to: "/staff-home" },
        { id: 2, title: "Tin tức", to: "/news-staff" },
        { id: 3, title: "Thanh toán", to: "/list-service" },
        { id: 4, title: "Bảng lương", to: "/staff-salary" },
      ],
    };
  },
  components: {
    NavbarItem,
  },
  methods: {
    logOut() {
      this.$store.commit("setAuthentication", null,false);
      this.$router.replace("/");
      localStorage.clear();
    },
    returnDashboard() {
      this.$router.push('/dashboard')
    }
  },

};
</script>

<style scoped>
h1,
h2,
h3,
h4,
h5,
h6 {
  color: #000000;
}

a {
  color: #000000;
  transition: all 0.5s ease;
}

a:hover {
  color: #2eca6a;
  text-decoration: none;
}

.link-two {
  color: #000000;
  transition: all 0.5s ease;
}

.link-two:hover {
  text-decoration: underline;
  color: #000000;
}

.link-one {
  color: #000000;
  transition: all 0.5s ease;
}

.link-one:hover {
  color: #000000;
  text-decoration: none;
}

.link-icon {
  color: #000000;
  font-weight: 500;
}

.link-icon span {
  font-size: 14px;
  padding-left: 4px;
  vertical-align: middle;
}

.link-a {
  color: #ffffff;
  text-decoration: none;
}

@media (min-width: 768px) {
  .link-a {
    font-size: 0.9rem;
  }
}

@media (min-width: 992px) {
  .link-a {
    font-size: 1rem;
  }
}

.link-a:hover {
  color: #ffffff;
  text-decoration: none;
}

.link-a span {
  font-size: 18px;
  vertical-align: middle;
  margin-left: 5px;
}

@media (min-width: 768px) {
  .link-a span {
    font-size: 1.5rem;
  }
}

@media (min-width: 992px) {
  .link-a span {
    font-size: 18px;
  }
}

.text-brand {
  color: #000000;
  font-size: 2rem;
  font-weight: 600;
}

@media (max-width: 767px) {
  .text-brand {
    font-size: 1.8rem;
  }
}

.color-a {
  color: #000000;
}

.color-b {
  color: #2eca6a;
}

.color-d {
  color: #adadad;
}

.color-text-a {
  color: #555555;
}

.no-margin {
  margin: 0;
}

/*--------------------------------------------------------------
# Navbar
--------------------------------------------------------------*/
.navbar-default {
  transition: all 0.5s ease-in-out;
  background-color: #ffffff;
  padding-top: 28px;
  padding-bottom: 28px;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  box-shadow: 1px 2px 15px rgba(100, 100, 100, 0.3);
}

.navbar-default .nav-search {
  color: #000000;
  font-size: 1.5rem;
}

.navbar-default.navbar-reduce {
  box-shadow: 1px 2px 15px rgba(100, 100, 100, 0.3);
}

.navbar-default.navbar-trans,
.navbar-default.navbar-reduce {
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.navbar-default.navbar-reduce .navbar-brand {
  color: #000000;
}

.navbar-default .dropdown .dropdown-menu {
  border-top: 0;
  border-left: 4px solid #2eca6a;
  border-right: 0;
  border-bottom: 0;
  transform: translate3d(0px, -40px, 0px);
  opacity: 0;
  filter: alpha(opacity=0);
  visibility: hidden;
  transition: all 0.5s cubic-bezier(0.3, 0.65, 0.355, 1) 0s,
    opacity 0.31s ease 0s, height 0s linear 0.36s;
  margin: 0;
  border-radius: 0;
  padding: 12px 0;
}

@media (min-width: 768px) {
  .navbar-default .dropdown .dropdown-menu {
    border-top: 4px solid #2eca6a;
    border-left: 0;
    display: block;
    position: absolute;
    box-shadow: 0 2px rgba(17, 16, 15, 0.1), 0 2px 10px rgba(20, 19, 18, 0.1);
  }
}

.navbar-default .dropdown .dropdown-menu .dropdown-item {
  padding: 12px 18px;
  transition: all 500ms ease;
  font-weight: 600;
  min-width: 220px;
}

.navbar-default .dropdown .dropdown-menu .dropdown-item:hover {
  background-color: #ffffff;
  color: #2eca6a;
  transition: all 500ms ease;
}

.navbar-default .dropdown .dropdown-menu .dropdown-item.active {
  background-color: #ffffff;
  color: #2eca6a;
}

.navbar-default .dropdown:hover .dropdown-menu {
  transform: translate3d(0px, 0px, 0px);
  visibility: visible;
  opacity: 1;
  filter: alpha(opacity=1);
}

/*------/ Hamburger Navbar /------*/
.navbar-toggler {
  position: relative;
}

.navbar-toggler:focus,
.navbar-toggler:active {
  outline: 0;
}

.navbar-toggler span {
  display: block;
  background-color: #000000;
  height: 3px;
  width: 25px;
  margin-top: 4px;
  margin-bottom: 4px;
  transform: rotate(0deg);
  left: 0;
  opacity: 1;
}

.navbar-toggler span:nth-child(1),
.navbar-toggler span:nth-child(3) {
  transition: transform 0.35s ease-in-out;
}

.navbar-toggler:not(.collapsed) span:nth-child(1) {
  position: absolute;
  left: 12px;
  top: 10px;
  transform: rotate(135deg);
  opacity: 0.9;
}

.navbar-toggler:not(.collapsed) span:nth-child(2) {
  height: 12px;
  visibility: hidden;
  background-color: transparent;
}

.navbar-toggler:not(.collapsed) span:nth-child(3) {
  position: absolute;
  left: 12px;
  top: 10px;
  transform: rotate(-135deg);
  opacity: 0.9;
}
</style>
