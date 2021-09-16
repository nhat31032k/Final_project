<template>
  <div class="col-xl-12" style="margin-top: -5rem; margin-left: 20%">
    <h3 style="margin-left: 20%">Add Staff</h3>
    <div class="row gutters">
      <EditStaffFields :data="data" :add="add"/>
    </div>
  </div>
</template>

<script>
import EditStaffFields from "./components/EditStaffFields";
export default {
  components: {
    EditStaffFields,
  },
  data() {
    return {
      data: {
        name: "",
        email: "",
        phone_number: "",
        birthday: '',
        address: '',
        position: ''
      },
      add: true
    };
  },
};
</script>
<style>
</style>