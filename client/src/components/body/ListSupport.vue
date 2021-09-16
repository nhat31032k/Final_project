<template>
  <div class="content">
    <div class="container">
      <div class="row">
        <support-item v-for="item in list_staff" :key="item.id" :staff="item" />
      </div>
     
    </div>
    <!-- container -->
  </div>
</template>

<script>
import SupportItem from "./components/SupportItem";
import axios from "axios";
export default {
  name: "list-support",
  components: {
    SupportItem,
  },
  data() {
    return {
      list_staff: [],
      exampleItems:[],
    };
  },
  mounted() {
    axios.get("http://localhost:5050/staff").then((response) => {
      this.list_staff = response.data;
      this.exampleItems=this.list_staff
    });
  }
};
</script>

<style scoped>
</style>