<template>
  <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
        <div class="card h-100">
          <div class="card-body">
            <div class="account-settings">
              <div class="user-profile">
                <div class="user-avatar">
                  <img
                    src="https://bootdey.com/img/Content/avatar/avatar7.png"
                    alt="Maxwell Admin"
                  />
                </div>
                <h5 class="user-name">User 1</h5>
                <h6 class="user-email">yuki@Maxwell.com</h6>
              </div>
              <div class="about">
                <h5>Số dư khả dụng</h5>
                <p>
                  20.000.000 VNĐ
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
</template>

<script>
export default {
  name: "payment-item-left",

};
</script>

<style scoped>
.card{
  border: none;
}
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
