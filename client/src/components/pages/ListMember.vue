<template>
  <div>
    <sidebar />
    <div class="container">
      <list-member />
    </div>
  </div>
</template>
<script>
import Sidebar from "../header/Sidebar";
import ListMember from "../body/ListMember";
export default {
  name: "list-member-page",
  components: {
    Sidebar,
    ListMember,
  },
};
</script>
<style></style>
