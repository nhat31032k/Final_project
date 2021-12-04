<template>
  <div>
    <!-- Vertical navbar -->
    <div class="bg-white vertical-nav" id="sidebar">
      <div class="px-3 py-4 mb-4 bg-light">
        <div class="media d-block align-items-center">
          <img
            src="../../assets/home.jpg"
            alt="..."
            width="65"
            class="mr-5 shadow-sm rounded-circle img-thumbnail"
            
          />
          <br>
          <div class="media-body">
            <h5 class="m-0 media-title">Gia Lai Hoang Anh</h5>
            
          </div>
        </div>
      </div>

      <!-- <p class="px-3 pb-4 mb-0 text-gray font-weight-bold text-uppercase small">
        Main
      </p> -->

      <ul class="mb-0 bg-white nav flex-column">
        <sidebar-item v-for="item in listTitle" :key="item.id" :item="item" />
        <li class="nav-item" @click="logOut" style="cursor: pointer">
          <a class="nav-link text-dark font-italic"><i class="mr-3 fa fa-sign-out text-primary fa-fw"></i>Logout</a>
        </li>
      </ul>
    </div>
    <!-- End vertical navbar -->
  </div>
</template>

<script>
import SidebarItem from "./components/SidebarItem";

export default {
  data() {
    return {
      listTitle: [
        {
          id: 1,
          title: "Home",
          icon: "fa fa-th-large mr-3 text-primary fa-fw",
          to: "/dashboard",
        },
        {
          id: 2,
          title: "Staff",
          icon: "fa fa-address-card mr-3 text-primary fa-fw",
          to: "/staff",
        },
        {
          id: 3,
          title: "User",
          icon: "fa fa-user mr-3 text-primary fa-fw",
          to: "/user",
        },
        {
          id: 4,
          title: "List Houses",
          icon: "fas fa-address-book mr-3 text-primary fa-fw",
          to: "/listhouse",
        },
        {
          id: 5,
          title: "List Constracts",
          icon: "fas fa-file-signature mr-3 text-primary fa-fw",
          to: "/list-contracts",
        },
        {
          id: 6,
          title: "Statistic",
          icon: "fas fa-pie-chart mr-3 text-primary fa-fw",
          to: "/statistics",
        },
        {
          id: 7,
          title: "Add account",
          icon: "fa fa-user-plus mr-3 text-primary fa-fw",
          to: "/sign-up",
        }
      ],
    };
  },
  components: {
    SidebarItem,
  },
  methods: {
    logOut(){
      this.$store.commit("setAuthentication", null,false);
      this.$router.replace("/");
      localStorage.clear();
    }
  },
};
</script>

<style>
.vertical-nav {
  position: relative;
  z-index: 2;
  min-width: 13rem;
  width: 10rem;
  height: 100vh;
  position: fixed;
  top: 0;
  left: 0;
  box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.1);
  transition: all 0.4s;
}

.page-content {
  width: calc(100% - 17rem);
  margin-left: 17rem;
  transition: all 0.4s;
}
 .media-title {
color: transparent;
background-clip: text;
-webkit-background-clip: text;
background-image: linear-gradient( to right,  #3d8aee,  #b4f866);
 }
/* for toggle behavior */

#sidebar.active {
  margin-left: -17rem;
}

#content.active {
  width: 100%;
  margin: 0;
}

@media (max-width: 768px) {
  #sidebar {
    margin-left: -17rem;
  }
  #sidebar.active {
    margin-left: 0;
  }
  #content {
    width: 100%;
    margin: 0;
  }
  #content.active {
    margin-left: 17rem;
    width: calc(100% - 17rem);
  }
}
.nav {
  align-items: flex-start;
}
</style>
