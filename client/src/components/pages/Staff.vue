<template>
  <div class="container">
      <h1 style="text-align: center">List Staff</h1>
    <div class="row">
      
      <list-staff />
    </div>
    <sidebar />
  </div>
</template>

<script>
import ListStaff from "../body/ListStaff";
import Sidebar from "../header/Sidebar";

export default {
  name: "Staff",
  components: {
    ListStaff,
    Sidebar,
  },
};
</script>

<style scoped>
.container {
  margin-top: -9rem !important;
}
</style>