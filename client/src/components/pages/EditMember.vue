<template>
  <div>
    <sidebar />
    <div class="container">
      <edit-member />
    </div>
  </div>
</template>
<script>
import Sidebar from "../header/Sidebar";
import EditMember from "../body/EditMember";
export default {
  name: "edit-member-page",
  components: {
    Sidebar,
    EditMember
  },
};
</script>
<style scoped></style>
