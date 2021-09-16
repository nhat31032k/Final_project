<template>
  <div>
    <div class="container">
      <div class="main-body">
        <div class="row gutters-sm" v-if="data">
          <StaffInfo :data="data" />
          <StaffDetail :data="data" />
        </div>
      </div>
    </div>
    <navbar-footer />
  </div>
</template>

<script>
import StaffInfo from "../body/components/Staffinfo";
import StaffDetail from "../body/components/StaffDetail";
import NavbarFooter from "./NavbarFooter";
import axios from 'axios'

export default {
  name: "staff-detail",
  data() {
      return {
          data: '',

      }
  },
  mounted() {
    var tmp = JSON.parse(localStorage.getItem('user'));
    axios.get(`http://localhost:5050/staff/info/${tmp.id}`)
      .then((response) => {
        this.data = response.data
       
      })
  },
  
  components: {
    StaffInfo,
    StaffDetail,
    NavbarFooter
  },
};
</script>

<style scoped></style>
