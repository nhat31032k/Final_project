<template>
  <div class="container">
    <h3 style="text-align: center">Edit Staff 1</h3>
    <div class="row gutters" v-if="data">
      <edit-staff-info :data="data[0]" />
      <edit-staff-fields :data="data[0]" />
    </div>
  </div>
</template>
<script>
import EditStaffInfo from "./components/EditStaffInfo";
import EditStaffFields from "./components/EditStaffFields";
import axios from 'axios'

export default {
  name: "edit-staff",
  components: {
    EditStaffInfo,
    EditStaffFields,
  },
  data() {
    return {
      data: null,
    };
  },
  mounted() {
    axios.get(`http://localhost:5050/staff/${this.$route.params.id}`)
      .then((response) => {
        this.data = response.data
      
      })
  },
};
</script>
<style scoped>
</style>
