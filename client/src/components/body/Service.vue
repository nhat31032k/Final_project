<template>
  <section class="section-services section-t8" style="margin-top: 20px">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="title-wrap d-flex justify-content-between">
            <div class="title-box">
              <h2 class="title-a">Dịch vụ chung cư</h2>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <service-item 
            v-for="item in items"
            :key="item.id"
            :item=item
        />
        
      </div>
    </div>
  </section>
</template>
<script>
import ServiceItem from "./components/ServiceItem";

export default {
  name: "service",
  data() {
    return {
      items: [
        {
          id: 0,
          title: "Đời sống",
          icon: "fa fa-gamepad",
          desc:
            " Chất lượng cuộc sống ở chung cư cao cấp cùng với sự chuyên nghiệp của đội ngũ nhân viên nhằm cung cấp cho khách hàng những dịch vụ tiện ích nhất",
          to: "/support",
        },
         {
          id: 1,
          title: "Sinh hoạt",
          icon: "fa fa-dollar",
          desc:
            " Chí phí sinh hoạt thấp phù hợp với ngân sách của các khách hàng nhằm đem lại cho bạn nhiều tiên lợi nhất có thể phục vụ theo phương thức kĩ càng",
          to: "/support",
        },
         {
          id: 2,
          title: "Giá cả",
          icon: "fa fa-home",
          desc:
            " Giá cả hợp lý dành cho khách hàng, khách hàng có thể chuyển phát hoặc đưa tiền mặt và chung cư chúng tôi có hỗ trợ cho khách hàng trả góp",
          to: "/support",
        },
      ],
    };
  },
  components: {
    ServiceItem,
  },
};
</script>

<style scoped>

</style>
