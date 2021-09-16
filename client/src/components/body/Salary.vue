<template>
  
<div class="container">
   <div class="col-md-12">
      <div class="invoice" v-if="data">
         <!-- begin  -->
         <div class=" text-inverse f-w-600">
            Company Name, Inc
         </div>
         <!-- end company -->
        
        <!-- begin header -->
            <SalaryHeader/>
        <!-- end header -->
         
         
         <!-- begin content -->
            <SalaryContent :data="data[0]"/>
         <!-- end content -->
        
      </div>
   </div>
</div>
</template>
<script>
import SalaryHeader from '../body/components/SalaryHeader'
import SalaryContent from '../body/components/SalaryContent'
import axios from 'axios'
export default {
    components: {
        SalaryHeader,
        SalaryContent
    },
    data() {
        return {
            data: null
        }
    },
    mounted() {
        axios.get(`http://localhost:5050/staff/salary/${JSON.parse(localStorage.getItem("user")).id}`)
            .then((res) =>{
                this.data = res.data
               
            })
    },
}
</script>
<style scoped>
    body{
    margin-top:20px;
    background:#eee;
}

.invoice {
    background: #fff;
    padding: 20px
}



</style>