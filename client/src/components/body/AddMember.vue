<template>
  <div class="container" style="margin-top: -7rem">
      <h3 style="text-align: center">Add Member</h3>
    <div class="row gutters">
      <add-member-info
      :info="info"
      />
      <add-member-fields
      :data="data"
      />
    </div>
  </div>
</template>
<script>
import AddMemberInfo from './components/AddMemberInfo'
import AddMemberFields from './components/AddMemberFields'
export default {
  name: "add-member",
  components: {
      AddMemberInfo,
      AddMemberFields
  },
  data() {
    return {
      info: {
        username: 'Nguyen Van A',
        no_room: 'A0101',
        avt: 'https://bootdey.com/img/Content/avatar/avatar7.png'
      },
      data: {
        fullname: '',
        email: '',
        phone: '',
        cmns: '',
        birthday: '',
        avt: ''
      }
    }
  },
};
</script>
<style scoped>




</style>
