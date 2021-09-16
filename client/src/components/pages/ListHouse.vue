<template>
  <div class="container">
    <sidebar />
    <h3 class="h3">List House </h3>
    <list-house/>
  </div>
</template>

<script>

import Sidebar from "../header/Sidebar";
import ListHouse from '../body/ListHouse'
export default {
  name: "list-house-page",
  components: {
        Sidebar,
        ListHouse
    }
};
</script>

<style scoped>
/********************* Shopping Demo-3 **********************/
.container{margin-top: -8rem !important;margin-bottom: 100px;}
.h3{text-align: center;}
</style>