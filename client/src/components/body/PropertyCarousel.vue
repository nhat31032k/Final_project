<template>
  <div id="property-single-carousel" style="margin-bottom: 20px"
    class="owl-carousel owl-arrow gallery-property"
  >
    <div class="carousel-item-b">
      <img
      style="width: 100%; height: 500px"
        :src="data.img"
        alt=""
      />
    </div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: "property-carousel",
  data() {
    return {
      data: ''
    }
  },
  mounted() {
    axios
      .get(`http://localhost:5050/room/${this.$route.params.id}`)
      .then((response) => {
        var obj = Object.assign({}, ...response.data);

        this.data= obj;
      });
  },
};
</script>

<style scoped></style>
