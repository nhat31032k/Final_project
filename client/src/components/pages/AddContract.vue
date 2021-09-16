<template>
  <div>
    <sidebar />
    <div class="container">
      <AddContract />
    </div>
  </div>
</template>
<script>
import Sidebar from "../header/Sidebar";
import AddContract from "../body/AddContract";
export default {
  name: "edit-contract-page",
  components: {
    Sidebar,
    AddContract
  },
};
</script>
<style scoped></style>
