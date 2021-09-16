<template>
  <div
    class="container"
    style="
      margin-top: -9rem !important;
      text-align: center;
      margin-bottom: 100px;
    "
  >
    <h1>Statistics Page</h1>
    <sidebar />
    <div class="row">
      <div class="col-md-12 col-lg-12 col-xl-12 chart">
        <h3>Doanh số theo tháng</h3>
        <LineChart />
      </div>

      <div class="col-md-12 col-lg-6 col-xl-6 chart">
        <h3>Tỉ lệ thanh toán dịch vụ đúng hạn</h3>
        <RadialBarChart />
      </div>
      <div class="col-md-12 col-lg-6 col-xl-6 chart">
        <h3>Tỉ lệ doanh số tháng</h3>
        <PieChart />
      </div> 
    </div>
  </div>
</template>

<script>
import Sidebar from "../header/Sidebar";
import LineChart from "../body/LineChart";
import RadialBarChart from "../body/RadialBarChart";
import PieChart from "../body/PieChart";

export default {
  components: {
    Sidebar,
    LineChart,
    RadialBarChart,
    PieChart,
  },
};
</script>

<style scoped>
.chart{
  margin: 20px auto;
}
</style>