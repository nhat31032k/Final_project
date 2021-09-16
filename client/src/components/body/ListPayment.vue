<template>
  <div class="container px-0">
    <div class="row mt-4">
      <div class="col-12 col-lg-10 offset-lg-1" v-if="role === 3 && billDetails">
        <payment-info :data=" billDetails[0]" />
        <payment-bill :data=" billDetails[0]"/>
      </div>
      <div class="col-12 col-lg-10 offset-lg-1" v-if="role === 2 && billstaffSearch" >
        <payment-info :data="billstaffSearch[0]" />
        <payment-bill :data="billstaffSearch[0]" v-if="billstaffSearch"/>
      </div>
    </div>
  </div>
</template>

<script>
import PaymentInfo from "./components/PaymentInfo";
import PaymentBill from "./components/PaymentBill";
import axios from 'axios'

export default {
  name: "list-payment",
  data() {
    return {
      billDetails: null,
      billstaffSearch: null,
      role: JSON.parse(localStorage.getItem('user')).role
    };
  },
  mounted() {
    axios.get(`http://localhost:5050/service/detail/${JSON.parse(localStorage.getItem('user')).username}`)
      .then((response) => {
        this.billDetails = response.data
      })

    axios.get(`http://localhost:5050/service/detail/${this.$route.params.room_name}`)
    .then((res) =>{
      this.billstaffSearch = res.data
    })
  },
  components: {
    PaymentInfo,
    PaymentBill,
  },
};
</script>

<style scoped></style>
