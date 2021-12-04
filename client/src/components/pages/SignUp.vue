<template>
  <div class="container">
    <h1 style="text-align: center" class= " container-title">Create an Account</h1>
    <h3 style="text-align: center; display: none" class="notify">Register successfully !!!</h3> 
    <div class="py-5 mt-4 row align-items-center">
      <!-- For Demo Purpose -->
      <div class="mb-5 col-md-5 pr-lg-5 mb-md-0" >
        <img
         src="../../assets/home.jpg"
          alt=""
          class="mb-3 img-fluid d-none d-md-block"
          style="width: 90%"
        />
        <button style="margin-left: 20%" @click="$router.push({name: 'dashboard'})" class="btn btn-success">Return dashboard</button>
      </div>

      <!-- Registeration Form -->
      <div class="ml-auto col-md-7 col-lg-6">
        <p v-if="errors.length">
          <b>Please correct the following error(s):</b>
          <ul>
            <li v-for="(error, index) in errors" :key="index">{{ error }}</li>
          </ul>
        </p>
        <form @submit.prevent="signup" method="POST">
          <div class="row">
           
            <!-- User Name -->
            <div class="mb-4 input-group col-lg-12">
              <div class="input-group-prepend">
                <span
                  class="px-4 bg-white input-group-text border-md border-right-0"
                >
                  <i class="fa fa-user text-muted"></i>
                </span>
              </div>
              <input
                id="username"
                autocomplete="username"
                name="username"
                placeholder="Username"
                @change="checkUsername"
                v-model="data.username"
                class="bg-white form-control border-left-0 border-md"
              />
              <div class="input-group-prepend check" style="display: none">
                <span
                  class="px-4 bg-white input-group-text border-md border-left-0"
                >
                  <i class="fa fa-times" style="color: red; display: none"></i>
                </span>
              </div>
            </div>

            <!-- drop down for type of account -->
            <div class="mb-4 input-group col-lg-12">
              <div class="input-group-prepend">
                <span
                  class="px-4 bg-white input-group-text border-md border-right-0"
                >
                  <i class="fa fa-list text-muted"></i>
                </span>
              </div>
              <select
                class="custom-select"
                id="type-account"
                name="ID_type_account"
                v-model="data.ID_type_account"
              >
                <option value="" disabled selected hidden
                  > Please select type of account</option
                >
                <option value="1">Admin</option>
                <option value="2">Staff</option>
                <option value="3">User</option>
              </select>
            </div>

            <!-- Password -->
            <div class="mb-4 input-group col-lg-12">
              <div class="input-group-prepend">
                <span
                  class="px-4 bg-white input-group-text border-md border-right-0"
                >
                  <i class="fa fa-lock text-muted"></i>
                </span>
              </div>
              <input
                id="password"
                type="password"
                name="password"
                autocomplete="new-password"
                placeholder="Password"
                v-model="data.password"
                class="bg-white form-control border-left-0 border-md"
              />
            </div>

            <!-- Password Confirmation -->
            <div class="mb-4 input-group col-lg-12">
              <div class="input-group-prepend">
                <span
                  class="px-4 bg-white input-group-text border-md border-right-0"
                >
                  <i class="fa fa-lock text-muted"></i>
                </span>
              </div>
              <input
                id="passwordConfirmation"
                type="password"
                autocomplete="new-password"
                name="passwordConfirmation"
                placeholder="Confirm Password"
                v-model="data.password_confirm"
                class="bg-white form-control border-left-0 border-md"
              />
            </div>

            <!-- Submit Button -->
            <div class="mx-auto mb-0 form-group col-lg-12">
              <button type="submit" class="py-2 btn btn-primary btn-block">
                <span class="font-weight-bold">Create Account</span>
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
import $ from "jquery";
export default {
  name: "sign-up",
  data() {
    return {
      data: {
        username: "",
        ID_type_account: "",
        password: "",
        password_confirm: "",
      },
      errors: [],
    };
  },
  methods: {
    signup(e) {
      var url = "http://localhost:5050/account/signup";
      var regularExpression = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
      this.errors = [];

      if (!this.data.username) {
        this.errors.push("Please Input usename !");
      }

      if (!this.data.ID_type_account) {
        this.errors.push("Please choose type of account !");
      }

      if (!this.data.password || !this.data.password_confirm) {
        this.errors.push("Please input password !");
      }

      if (this.data.password.length < 6 || this.data.password > 20) {
        this.errors.push(
          "Password must be less than 20 character and longer than 6 characters !"
        );
      }

      if (!regularExpression.test(this.data.password)) {
        this.errors.push(
          "Password should contain atleast one number and one special character !"
        );
      }

      if (this.data.password != this.data.password_confirm) {
        this.errors.push("Password does not match !");
      }

      if (!this.errors.length) {
        axios
          .post(url, this.data)
          .then((res) => {
            console.log(res);
            this.data.username = "";
            this.data.ID_type_account = "";
            this.data.password = "";
            this.data.password_confirm = "";
            $(".notify").css("display", "block").delay(2000).fadeOut();
          })
          .catch((err) => {
            console.log(err);
          });
      } else {
        return e.preventDefault();
      }
    },
    checkUsername() {
      var url = "http://localhost:5050/account/checkusername";
      var username = {};
      this.errors = [];
      username.username = this.data.username;
      $.ajax({
        type: "POST",
        url: url,
        data: JSON.stringify(username),
        contentType: "application/json",
        success: (data) => {
          if (data.data.length != 0) {
            $(".check, .fa-times").css("display", "flex");
            this.errors.push("Invalid username !");
            console.log("Invalid Username !", data);
          } else {
            $(".check, .fa-times").css("display", "none");
            console.log("Valid username !");
          }
        },
      });
      // console.log(this.data.username);
    },
  },
};
</script>

<style scoped>
.container {
  transform: translateY(-15%);
}
.form-control {
  padding: 1.5rem 0.5rem;
}

select.form-control {
  height: 52px;
  padding-left: 0.5rem;
}

.form-control::placeholder {
  color: #ccc;
  font-weight: bold;
  font-size: 0.9rem;
}
.form-control:focus {
  box-shadow: none;
}
.container-title{
  color: transparent;
  background-clip: text;
  -webkit-background-clip: text;
  background-image: linear-gradient( to right,  #1762d3,  #f3f17a);
}
.notify{
  color: red;
}
.btn-success{
  background-color: #1762d3;
}
</style>
