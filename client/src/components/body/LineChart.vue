<template>
  
   <div>
      <apexchart width="100%" height="500" type="line" :options="options" :series="series"></apexchart>
    </div>
</template>

<script>
import axios from 'axios'
export default {
  data() {
    return {
      options: {
        chart: {
          id: "vuechart-example",
        },
        xaxis: {
          categories: [1,2,3],
        },
      },
      series: [
        {
          name: "dien",
          data: [],
        },
        {
          name: "nuoc",
          data: [],
        }, 
        {
          name: "internet",
          data: [],
        }, 
        {
          name: "rac",
          data: [],
        }, 
        {
          name: "giuxu",
          data: [],
        },
        {
          name: "khac",
          data: [],
        },     
      ],
    };
  },
  mounted() {
    axios.get('http://localhost:5050/service/fee')
    .then((res) => {
      for(var i = 0; i < res.data.length; i++){
        this.options.xaxis.categories.push(res.data[i].month)
        for (var k = 0; k < this.series.length; k++){
          if( this.series[k].name === 'dien'){
            this.series[k].data.push(res.data[i].dien)
          }
          if( this.series[k].name === 'nuoc'){
            this.series[k].data.push(res.data[i].nuoc)
          }
          if( this.series[k].name === 'internet'){
            this.series[k].data.push(res.data[i].internet)
          }
          if( this.series[k].name === 'rac'){
            this.series[k].data.push(res.data[i].rac)
          }
          if( this.series[k].name === 'giuxe'){
            this.series[k].data.push(res.data[i].giuxe)
          }
          if( this.series[k].name === 'khac'){
            this.series[k].data.push(res.data[i].khac)
          }

        }
      }

    })
  },
};
</script>
<style>
</style>