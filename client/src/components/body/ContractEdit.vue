<template>
  <div class="container">
    <div class="row gutters" v-if="data">
      <EditContractInfo :data="data[0]" />
      <EditContractFields :data="data[0]" />
    </div>
  </div>
</template>
<script>
import EditContractInfo from "./components/EditContractInfo";
import EditContractFields from "./components/EditContractFields";
import axios from 'axios'
export default {
  name: "edit-contract",
  components: {
    EditContractInfo,
    EditContractFields,
  },
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
};
</script>
<style scoped>
</style>
