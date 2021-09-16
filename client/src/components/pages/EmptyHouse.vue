<template>
  <div>
    <div class="container">
      <ListEmptyHouse />
    </div>
    <navbar-footer />
  </div>
</template>

<script>
import ListEmptyHouse from "../body/ListEmptyHouse";
import NavbarFooter from "./NavbarFooter";
export default {
  name: "empty-house",
  components: {
    ListEmptyHouse,
    NavbarFooter,
  },
};
</script>

<style scoped>
.container {
  position: relative;
  margin-top: 10rem !important;
}
</style>
