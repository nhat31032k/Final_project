<template>
  <div id="demo" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ul class="carousel-indicators">
      <li
        data-target="#demo"
        v-for="img in imgs"
        :key="img.id"
        :data-slide-to="img.id"
        :class="{'active': img.id === 0}"
      ></li>
    </ul>

    <!-- The slideshow -->
    <div class="carousel-inner">

      <carousel-item
        v-for="img in imgs"
        :key="img.id"
        :img="img"
        :status="status"
      />
    </div>
    <!-- Left and right controls -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
      <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
      <span class="carousel-control-next-icon"></span>
    </a>
  </div>
</template>

<script>
import CarouselItem from "./components/CarouselItem";

export default {
  name: "carousel",
  data() {
    return {
      imgs: [
        {
          id: 0,
          alt: "img0",
          img:
            "https://hochiminhrealestate.vn/images/products/spacious-brand-new-3-bedrooms-serviced-apartment-for-rent-in-district-2_202091715845.jpg",
        },
        {
          id: 1,
          alt: "img1",
          img:
            "http://static.asiawebdirect.com/m/bangkok/portals/vietnam/homepage/ho-chi-minh-city/top10/top10-ho-chi-minh-hotels-serviced-apartment/pagePropertiesImage/best-hcmc-serviced-apartment.jpg",
        },
        {
          id: 2,
          alt: "img2",
          img:
            "https://cdn.luxstay.com/users/9452/VGRS8BG8ieLc3lZw83Sl60zD.JPG",
        },
        {
          id: 3,
          alt: "img3",
          img:
            "https://cf.bstatic.com/images/hotel/max1024x768/132/132591315.jpg",
        },
      ],
      status: false,
    };
  },
  components: {
    CarouselItem,
  },
};
</script>

<style></style>
