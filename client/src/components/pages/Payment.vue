<template>
  <div>
    <div class="container">
      <list-payment />
    </div>
    <navbar-footer />
  </div>
</template>

<script>
import ListPayment from "../body/ListPayment";
import NavbarFooter from "./NavbarFooter";
export default {
  name: "payment",
  components: {
    ListPayment,
    NavbarFooter
  },
};
</script>

<style scoped></style>
