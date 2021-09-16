<template>
  <div>
    <div class="container">
      <list-support />
    </div>
    <navbar-footer />
  </div>
</template>

<script>
import ListSupport from "../body/ListSupport";
import NavbarFooter from "./NavbarFooter";
export default {
  name: "support",
  components: {
    ListSupport,
    NavbarFooter,
  },
};
</script>

<style scoped></style>
