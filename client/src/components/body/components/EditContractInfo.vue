<template lang="">
  <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
    <div class="card h-100" style="border:none">
      <div class="card-body" >
        <div class="account-settings" >
          <div class="user-profile">
            <div class="user-avatar">
              <img
                :src="data.avt"
                :alt="data.name"
              />
            </div>
            <h6 class="user-name">Name: {{data.name}}</h6>
            <p>ID contract: {{ data.id }}</p>
           
          </div>
          
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "edit-staff-info",
  props: {
    data: {
      type: Object
    }
  }
};
</script>
<style scoped>
.account-settings .user-profile {
  margin: 0 0 1rem 0;
  padding-bottom: 1rem;
  text-align: center;

}
.account-settings .user-profile .user-avatar {
  margin: 0 0 1rem 0;
}
.account-settings .user-profile .user-avatar img {
  width: 90px;
  height: 90px;
  -webkit-border-radius: 100px;
  -moz-border-radius: 100px;
  border-radius: 100px;
}


</style>
