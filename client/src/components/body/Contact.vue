<template>
  <div class="Contact-Staff">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="title-wrap d-flex justify-content-between">
            <div class="title-box">
              <h2 class="title-a">Liên Hệ</h2>
            </div>
          </div>
        </div>
      </div>
      <div class="row" v-if="infos">
        <contact-item 
          v-for="info in infos"
          :key="info.id"
          :info="info"
        />
      </div>
    </div>
  </div>
</template>

<script>
import ContactItem from "./components/ContactItem";
import axios from "axios";

export default {
  name: "contact",
  data() {
    return {
      infos: ''
    };
  },
  components: {
    ContactItem,
  },
  mounted() {
    axios.get("http://localhost:5050/staff/").then((response) => {
      this.infos = response.data;
    });
  },
};
</script>

<style scoped></style>
