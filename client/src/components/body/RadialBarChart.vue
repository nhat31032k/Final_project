<template>
  <div id="chart">
    <apexchart
      type="radialBar"
      height="350"
      :options="chartOptions"
      :series="series"
    ></apexchart>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data() {
    return {
      series: [],
      chartOptions: {
        chart: {
          height: 350,
          type: "radialBar",
        },
        plotOptions: {
          radialBar: {
            hollow: {
              size: "70%",
            },
          },
        },
        labels: ["Cricket"],
      },
    };
  },
  mounted() {
    axios.get('http://localhost:5050/service/status')
    .then((res) => {
      var percent_paid =( (res.data[0].status)/(res.data[0].status + res.data[1].status) ) * 100
      this.series.push(percent_paid)
    })
  },
};
</script>
<style>
</style>