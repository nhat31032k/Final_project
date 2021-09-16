<template lang="">
  <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
    <div class="card h-100" style="border:none">
      <div class="card-body" >
        <div class="account-settings" >
          <div class="user-profile">
            <div class="user-avatar">
              <img
                :src="data.avt"
                alt="Maxwell Admin"
              />
            </div>
            <h5 class="user-name">No.Room: {{data.username}}</h5>
            <h6 class="user-email">Owner: {{data.name}}</h6>
          </div>
          
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "add-member-info",
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
.account-settings .user-profile h5.user-name {
  margin: 0 0 0.5rem 0;
}
.account-settings .user-profile h6.user-email {
  margin: 0;
  font-size: 0.8rem;
  font-weight: 400;
  color: #9fa8b9;
}
.account-settings .about {
  margin: 2rem 0 0 0;
  text-align: center;
}
.account-settings .about h5 {
  margin: 0 0 15px 0;
  color: #007ae1;
}
.account-settings .about p {
  font-size: 0.825rem;
}
</style>
