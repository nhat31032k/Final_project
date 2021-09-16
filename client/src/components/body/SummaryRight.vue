<template>
  <div class="col-md-7 col-lg-7 section-md-t3">
    <div class="row">
      <div class="col-sm-12">
        <div class="title-box-d">
          <h3 class="title-d">Property Description</h3>
        </div>
      </div>
    </div>
    <div class="property-description">
      <p class="description color-text-a">{{ data.description }}</p>
    </div>
    <div class="row section-t3">
      <div class="col-sm-12">
        <div class="title-box-d">
          <h3 class="title-d">Amenities</h3>
        </div>
      </div>
    </div>
    <div class="amenities-list color-text-a">
      <ul class="list-a no-margin">
        <li>Balcony</li>
        <li>Outdoor Kitchen</li>
        <li>Cable Tv</li>
        <li>Deck</li>
        <li>Tennis Courts</li>
        <li>Internet</li>
        <li>Parking</li>
        <li>Sun Room</li>
        <li>Concrete Flooring</li>
      </ul>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "summarry-right",
  data() {
    return {
      data: "",
    };
  },
  mounted() {
    axios.get(`http://localhost:5050/typeroom/${this.$route.params.room}`).then((response) => {
      this.data = response.data;
    });
  },
};
</script>

<style scoped>
/*------/ List a /------*/
.list-a {
  display: inline-block;
  line-height: 2;
  padding: 0;
  list-style: none;
}

.list-a li {
  position: relative;
  width: 50%;
  float: left;
  padding-left: 25px;
  padding-right: 5px;
}

@media (min-width: 992px) {
  .list-a li {
    width: 33.333%;
  }
}

.list-a li:before {
  content: "";
  width: 10px;
  height: 2px;
  position: absolute;
  background-color: #313131;
  top: 15px;
  left: 0;
}
</style>
