<template>
  <div class="col-md-3 col-sm-6">
    <div class="product-grid3">
      <div class="product-image3">
        <router-link :to="`/housedetail/${house.room_name}/${house.ID}`">
          <img class="pic-1" :src="house.img" />
          <img v-if="house.status === 'unavailable'" class="pic-owner" :src="house.pic_owner" />
        </router-link>
        <ul class="item">
         
          <li v-if="house.status === 'unavailable'">
            <router-link title="Hợp đồng" :to="`/contract-detail/${house.ID}`" tag="a"
              ><i class="fa fa-signature"></i
            ></router-link>
          </li>
          <li v-else>
            <router-link title="Add" :to="`/add-contract/${house.room_name}`" tag="a"
              ><i class="fa fa-user-plus"></i
            ></router-link>
          </li>
        </ul>

        <span v-if="house.status === 'unavailable'" class="product-owned">Đã sở hữu</span>
        <span v-else class="product-vacant">Còn trống</span>
      </div>
      <div class="product-content">
        <h3 class="title">{{ house.room_name }}</h3>
        
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "house-item",
  props: {
    house: {
      type: Object,
    },
  },
};
</script>
<style>
.product-grid3 {
  font-family: Roboto, sans-serif;
  text-align: center;
  position: relative;
  z-index: 1;
  margin-bottom: 20px;
}
.product-grid3:before {
  content: "";
  height: 81%;
  width: 100%;
  background: rgb(0, 206, 137);
  border: 1px solid rgba(0, 0, 0, 0.1);
  opacity: 0;
  position: absolute;
  top: 0;
  left: 0;
  z-index: -1;
  transition: all 0.5s ease 0s;
}
.product-grid3:hover:before {
  opacity: 1;
  height: 100%;
}
.product-grid3 .product-image3 {
  position: relative;
}
.product-grid3 .product-image3 a {
  display: block;
}
.product-grid3 .product-image3 img {
  width: 100%;
  height: 220px;
}
.product-grid3 .pic-1 {
  opacity: 1;
  transition: all 0.5s ease-out 0s;
}
.product-grid3:hover .pic-1 {
  opacity: 0;
}
.product-grid3 .pic-owner {
  position: absolute;
  top: 0;
  left: 0;
  opacity: 0;
  transition: all 0.5s ease-out 0s;
}
.product-grid3:hover .pic-owner {
  opacity: 1;
}
.product-grid3 .item {
  width: 120px;
  padding: 0;
  margin: 0 auto;
  list-style: none;
  opacity: 0;
  position: absolute;
  right: 0;
  left: 0;
  bottom: -23px;
  transform: scale(0);
  transition: all 0.3s ease 0s;
}
.product-grid3:hover .item {
  opacity: 1;
  transform: scale(1);
}
.product-grid3:hover .product-discount-label,
.product-grid3:hover .product-owned, .product-grid3:hover .product-vacant
.product-grid3:hover .title {
  opacity: 0;
}
.product-grid3 .item li {
  display: inline-block;
}
.product-grid3 .item li a {
  color: #00d66b;
  background: #fff;
  font-size: 18px;
  line-height: 50px;
  width: 50px;
  height: 50px;
  border: 1px solid rgba(0, 0, 0, 0.1);
  border-radius: 50%;
  margin: 0 2px;
  display: block;
  transition: all 0.3s ease 0s;
}
.product-grid3 .item li a:hover {
  background: #00d66b;
  color: #fff;
}
.product-grid3 .product-discount-label,
.product-grid3 .product-owned{
  background-color: #00d66b;
  color: #fff;
  font-size: 17px;
  padding: 2px 10px;
  position: absolute;
  right: 10px;
  top: 10px;
  transition: all 0.3s;
}
.product-grid3 .product-vacant {
  background-color: #d62b00;
  color: #fff;
  font-size: 17px;
  padding: 2px 10px;
  position: absolute;
  right: 10px;
  top: 10px;
  transition: all 0.3s;
}
.product-grid3 .product-content {
  z-index: -1;
  padding: 15px;
  text-align: left;
}
.product-grid3 .title {
  font-size: 20px;
  text-transform: capitalize;
  margin: 0 0 7px;
  transition: all 0.3s ease 0s;
  font-weight: bold;
}
.product-grid3 .title,
.product-grid3 .desc a {
  color: #414141;
}
.product-grid3 .desc {
  font-size: 14px;
  text-transform: capitalize;
  margin: 0 0 7px;
  transition: all 0.3s ease 0s;
}
.product-grid3 .price {
  color: #000;
  font-size: 16px;
  letter-spacing: 1px;
  font-weight: 600;
  margin-right: 2px;
  display: inline-block;
}

@media only screen and (max-width: 1200px) {
  .product-grid3 .rating {
    margin: 0;
  }
}
@media only screen and (max-width: 990px) {
  .product-grid3 {
    margin-bottom: 30px;
  }
  .product-grid3 .rating {
    margin: -22px 0 0;
  }
}
@media only screen and (max-width: 359px) {
  .product-grid3 .rating {
    margin: 0;
  }
}
</style>
