<template>
  <tr>
    <td style="width: 5%">
      <span class="user-subhead">{{ data.ID }}</span>
    </td>
    <td>
      <span>{{ data.room_name }}</span>
    </td>
    <td>{{ new Date(data.month).toLocaleDateString() }}</td>
    <td>
      <span class="badge badge-warning badge-pill" v-if="data.status === 'unpaid'">{{ data.status }}</span>
      <span class="badge badge-success badge-pill" v-else>{{ data.status }}</span>
    </td>
    <td style="width: 20%">
      <button
        class="btn btn-success btn-sm rounded-0"
        type="button"
        data-toggle="tooltip"
        data-placement="top"
        @click="$router.push(`/payment/${data.room_name}`)"
        title="Payment"
      >
        <i class="fa fa-money-bill-wave"></i>
      </button>
    </td>
  </tr>
</template>
<script>
//import  axios from 'axios'
export default {
  name: "service-staff",
  props: {
      data: {
          type: Object
      }
  },
  // methods: {
  //     paymentForUser(){
  //         axios.post(`http://localhost:5050/service/payment/${this.data.room_name}`)
  //         .then((res) =>{
  //           console.log(res);
  //           this.$router.push('')
  //         })
  //     }
  // },
};
</script>
<style>
.table tr td,
.table tr th {
  text-align: center;
}
</style>