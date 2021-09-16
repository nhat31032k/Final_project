<template>
  <div class="container">
    <div class="main-body">
      <!-- /Breadcrumb -->

      <div class="row gutters-sm" v-if="data">
        <ContractInfo :data="data" />
        <ContractDetail :data="data" />
      </div>
    </div>
  </div>
</template>
<script>
import ContractInfo from "../body/components/ContractInfo";
import ContractDetail from "../body/components/ContractDetail";
import axios from 'axios'

export default {
  name: "contract-detail",
  data() {
    return {
      data: null,
    };
  },
  mounted() {
    axios
      .get(`http://localhost:5050/person/person-user-contract/${this.$route.params.id}`)
      .then((res) => {
        this.data = res.data
      })
  },

  components: {
    ContractInfo,
    ContractDetail,
  },
};
</script>
<style></style>
