<template>
  <div class="body">
     <h1 class="body-title">Welcome to Our Department</h1>
      <p class="container-title">LOGIN</p>
    <div class="container">
     
      <div class="row py-5 mt-4 align-items-center">
        <!-- For Demo Purpose -->
        <!-- <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
          <img
            src="../../assets/home.jpg"
            alt=""
            class="img-fluid mb-3 d-none d-md-block"
            style="width: 90%"
          />
        </div> -->
        <!-- Login Form -->
          <form @submit.prevent="auth">
            <div class="row">
              <!-- Username -->
              <div class="input-group col-lg-12 mb-4">
                <div class="input-group-prepend">
                  <span
                    class="input-group-text bg-white px-4 border-md border-right-0"
                  >
                    <i class="fas fa-user text-muted"></i>
                  </span>
                </div>
                <input
                  name="username"
                  v-model="data.username"
                  placeholder="Username"
                  required
                  autocomplete="current-username"
                  class="form-control bg-white border-left-0 border-md"
                />
              </div>
              <!-- Password -->
              <div class="input-group col-lg-12 mb-4">
                <div class="input-group-prepend">
                  <span
                    class="input-group-text bg-white px-4 border-md border-right-0"
                  >
                    <i class="fa fa-lock text-muted"></i>
                  </span>
                </div>
                <input
                  type="password"
                  name="password"
                  v-model="data.password"
                  placeholder="Password"
                  required
                  autocomplete="current-password"
                  class="form-control bg-white border-left-0 border-md"
                />
              </div>
              <!-- Submit Button -->
              <div class="form-group col-lg-12 mx-auto mb-0">
                <button type="submit" class="btn btn-primary btn-block py-2">
                  <span class="font-weight-bold">LOGIN</span>
                </button>
              </div>
            </div>
          </form>
    
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import decode from "jwt-decode";
export default {
  name: "sign-up",
  data() {
    return {
      data: {
        username: "",
        password: "",
      },
      errors: [],
    };
  },
  methods: {
    auth() {
      var url = "http://localhost:5050/account/auth";
      axios.post(url, this.data).then((res) => {
        var response = res.data;
        var data = decode(response.token);
        if (response.status === 500) {
          alert(data.msg);
          location.reload();
        }

        if (response.status === 200) {
          var user = {
            id: data.id,
            username: data.username,
            role: data.role,
            token: response.token,
          };
          localStorage.setItem("user", JSON.stringify(user));

          if (data.role === 3) {
            this.$store.commit("setAuthentication", 3, true);
            this.$router.replace("/home");
          }
          if (data.role === 1) {
            this.$store.commit("setAuthentication", 1, true);
            this.$router.push("/dashboard");
          }
          if (data.role === 2) {
            this.$store.commit("setAuthentication", 2, true);
            this.$router.push("/staff-home");
          }
        }
      });
    },
  },
};
</script>

<style  lang="scss" scoped>
  *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    
  }
  .body {
    width:100%;
    background-image:linear-gradient(to bottom,rgba(87, 95, 109, 0.2),rgba(35,43,56,0.9)),url("https://images.unsplash.com/photo-1467803738586-46b7eb7b16a1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80");
    background-size:cover;
    background-position: center center;
    background-repeat:no-repeat ;
    background-attachment: fixed;
    margin-top:-10rem;
    height: 100vh;
    position:relative;
    &-title{
      margin: 5rem 0 0 23rem;
      font-size: 3rem;
      font-weight: bold;
      background-image: linear-gradient(to right,rgb(83, 167, 245),rgba(119, 255, 165, 0.91));
      text-transform: uppercase;
      display: inline-block;
      color: transparent;
      -webkit-background-clip:text ;
      background-clip:text;
    }
  }
.container {
  // transform: translateY(-10%);
  position: absolute;
  top:55%;
  left:30%;
  transform: translateY(-50%);
  // width: 100vw;
    // width:1000px;
    // height:1000px;
    
  &-title{
    margin: 5rem 0 0 41rem;
    // text-align: center;
    font-size: 2.5rem;
    font-weight: bold;
    background-image: linear-gradient(to right,rgb(83, 167, 245),rgba(119, 255, 165, 0.91));
    text-transform: uppercase;
    display: inline-block;
    color: transparent;
    -webkit-background-clip:text ;
    background-clip:text;
  }
}
.input-group:hover{
  border: 4px solid rgb(72, 203, 255);
  transition: all 0.3s ease;
  // margin: 2rem 1.5rem;
}
.form-control::placeholder {
  color: #ccc;
  font-weight: bold;
  font-size: 0.9rem;
}
.form-control:focus {
  box-shadow: none;
}
</style>
