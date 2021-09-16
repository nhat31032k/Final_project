<template>
  <div class="container" style="margin-top: -7rem">
    <h3 style="text-align: center">Edit user</h3>
    <div class="row gutters" v-if="data">
      <add-member-info :data="data[0]" />
      <add-member-fields :data="data[0]" />
    </div>
  </div>
</template>
<script>
import AddMemberInfo from "./components/AddMemberInfo";
import AddMemberFields from "./components/AddMemberFields";
import axios from "axios";

export default {
  name: "edit-member",
  components: {
    AddMemberInfo,
    AddMemberFields,
  },
  data() {
    return {
      data: null,
    };
  },
  mounted() {
    axios
      .get(
        `http://localhost:5050/person/person-user/${this.$route.params.id_member}`
      )
      .then((response) => {
        this.data = response.data;
      });
  },
};
</script>
<style scoped>
</style>
