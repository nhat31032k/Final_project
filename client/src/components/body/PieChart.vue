<template>
  
    <apexchart type="pie" width="380" :options="chartOptions" :series="series"></apexchart>
</template>
<script>
import axios from 'axios'
export default {
  data() {
    return {
      series: [],
          chartOptions: {
            chart: {
              width: 380,
              type: 'pie',
            },
            labels: ['Điện', 'Nước', 'Internet', 'Rác' ,'Giữ xe', 'Khác'],
            responsive: [{
              breakpoint: 480,
              options: {
                chart: {
                  width: 200
                },
                legend: {
                  position: 'bottom'
                }
              }
            }]
          },
    };
  },
  mounted() {
    axios.get('http://localhost:5050/service/fee')
    .then((res) => {
      var len = res.data.length
      for ( var i = 0; i < len; i++){
        if(res.data[i].month === res.data[len - 1].month ){
          this.series.push(parseFloat(res.data[i].dien) )
          this.series.push(parseFloat(res.data[i].nuoc))
          this.series.push(parseFloat(res.data[i].internet))
          this.series.push(parseFloat(res.data[i].rac))
          this.series.push(parseFloat(res.data[i].giuxe))
          this.series.push(parseFloat(res.data[i].khac))
        }
      }
    })
  },
};
</script>
<style>
</style>