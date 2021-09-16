<template>
  <div>
    <sidebar />
    <div class="container">
      <add-member />
    </div>
  </div>
</template>
<script>
import Sidebar from "../header/Sidebar";
import AddMember from "../body/AddMember";
export default {
  name: "edit-member-page",
  components: {
    Sidebar,
    AddMember
  },
};
</script>
<style scoped></style>
