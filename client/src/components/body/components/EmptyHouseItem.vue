<template lang="">
  <div class="col-lg-4 col-md-6 mb-4 mb-lg-0 hover_icon">
    <!-- Card-->
    <div class="card rounded shadow-sm border-0">
      <div class="card-body p-4">
        <img
          :src="item.img"
          alt=""
          style="height: 200px"
          class="img-fluid d-block mx-auto mb-3"
        />
        <h5>
          <router-link tag="a" :to="`/housedetail/${item.room_name}/${item.ID}`" class="text-dark">
            {{ item.room_name }}
          </router-link>
        </h5>
        <p class="small text-muted font-italic">
          {{ decsTypeRoom }}
        </p>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "emptyhouse-item",
  props: ["item"],
  computed: {
    decsTypeRoom: function(){
      if ( this.item.ID_type_room === 1){
        return "Căn hộ 1 phòng ngủ"
      }else if ( this.item.ID_type_room === 2){
        return "Căn hộ 2 phòng ngủ"
      } else{
        return "Căn hộ 3 phòng ngủ"
      }
    }
  }
};
</script>
<style scoped>
.hover_icon {
  transition: all 0.3s ease;
  margin-bottom: 30px !important;
}
.hover_icon:hover {
  -webkit-box-shadow: -10px 8px 11px 3px rgba(194, 192, 194, 1);
  -moz-box-shadow: -10px 8px 11px 3px rgba(194, 192, 194, 1);
  box-shadow: -10px 8px 11px 3px rgba(194, 192, 194, 1);
}
</style>
