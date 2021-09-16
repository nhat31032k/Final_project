<template>
  <div class="container">
    <div class="main-body">
      <div class="row gutters-sm" v-if="data">
        <StaffInfo :data="data" />
        <StaffDetail :data="data" />
      </div>
    </div>
  </div>
</template>
<script>
import StaffInfo from "../body/components/Staffinfo";
import StaffDetail from "../body/components/StaffDetail";
import axios from 'axios'

export default {
  name: "staff-detail",
  data() {
    return {
      data: '',
    };
  },
  mounted() {
    axios.get(`http://localhost:5050/staff/${this.$route.params.id}`)
      .then((response) => {
        this.data = response.data
        console.log(this.data);
      })
  },

  components: {
    StaffInfo,
    StaffDetail,
  },
};
</script>
<style></style>
