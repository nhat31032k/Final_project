<template>
  
   <apexchart width="500" type="bar" :options="options" :series="series"></apexchart>
</template>
<script>
import axios from 'axios'
export default {
  data() {
    return {
      options: {
        chart: {
          id: 'vuechart-example'
        },
        xaxis: {
          categories: []
        }
      },
      series: [
        {
        name: 'Tháng 1',
        data: []
        },
        {
        name: 'Tháng 2',
        data: []
        },
        {
        name: 'Tháng 3',
        data: []
        }
      ]
    };
  },
  mounted() {
    axios.get('http://localhost:5050/service/fee')
    .then((res) => {
      for(var i = 0; i < res.data.length; i++){
        var total = res.data[i].dien + res.data[i].nuoc + res.data[i].internet + res.data[i].rac + res.data[i].giuxe + res.data[i].khac
        this.options.xaxis.categories.push(res.data[i].month)
        for (var k = 0; k < this.series.length; k++){
          if( this.series[k].name === 'Tháng 1'){
            this.series[k].data.push(total)
          }
          if( this.series[k].name === 'Tháng 2'){
            this.series[k].data.push(total)
          }
          if( this.series[k].name === 'Tháng 3'){
            this.series[k].data.push(total)
          }
          
        }
      }

    })
  },
};
</script>
<style>
</style>