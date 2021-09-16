<template>
  <div>
    <div class="container">
      <carousel />
      <service />
      <contact />
     
    </div>
     <navbar-footer/>
  </div>
</template>

<script>
import Carousel from "../body/Carousel";
import Contact from "../body/Contact";
import Service from "../body/Service";
import NavbarFooter from "./NavbarFooter";

export default {
  components: {
    Carousel,
    Service,
    Contact,
    NavbarFooter,
  },
};
</script>

<style scoped></style>
