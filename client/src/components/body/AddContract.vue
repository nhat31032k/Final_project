<template>
  <div class="container" style="margin-top: -7rem">
    <h3 style="text-align: center">Add Contract</h3>
    <div class="row gutters">
      <AddContractFields :data="data" />
    </div>
  </div>
</template>
<script>
import AddContractFields from "./components/AddContractFields";
export default {
  name: "add-Contract",
  components: {
    AddContractFields,
  },
  data() {
    return {
      data: {
        name: "",
        no_room: "",
        img: "",
        date_create: "",
        expiration: "",
        phone: "",
        price: "",
      },
    };
  },
};
</script>
<style scoped>
</style>
