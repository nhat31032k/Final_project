<template>
  <div>
    <div class="container">
      <list-news />
    </div>
    <navbar-footer />
  </div>
</template>

<script>
import ListNews from "../body/ListNews";
import NavbarFooter from "./NavbarFooter";

export default {
  name: "news",
  components: {
    ListNews,
    NavbarFooter,
  },
};
</script>

<style scoped></style>
