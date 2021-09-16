<template>
  <div class="container">
    <sidebar />
    <div class="row">
      <div class="col-12">
        <counting />
      </div>
      <div class="col-md-12 col-lg-6 col-xl-6">
        <h3>Tỉ lệ doanh số tháng</h3>
        <PieChart />
      </div>
      <div class="col-md-12 col-lg-6 col-xl-6">
         <h3>Tỉ lệ thanh toán dịch vụ đúng hạn</h3>
        <RadialBarChart />
      </div>
      <div class="col-12 justify-content-center">
        <h2 style="text-align: center">List Staff</h2>
        <list-staff />
      </div>
    </div>
  </div>
</template>

<script>
import Counting from "../header/Counting";
import Sidebar from "../header/Sidebar";
import RadialBarChart from "../body/RadialBarChart";
import ListStaff from "../body/ListStaff";
import PieChart from "../body/PieChart";

export default {
  name: "dash-board",
  data() {
    return {};
  },
  components: {
    Sidebar,
    Counting,
    ListStaff,
    PieChart,
    RadialBarChart
  },
};
</script>

<style scoped>
.col-8 {
  margin: 20px;
  text-align: center;
}
.container {
  margin-bottom: 100px;
}
h3{
  margin: 0 10px;
}
</style>
