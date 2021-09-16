<template>
  <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
    <div class="alert alert-success" style="display: none">
      <button
        type="button"
        class="close"
        data-dismiss="alert"
        aria-hidden="true"
      >
        &times;
      </button>
      <strong>Add info staff success !</strong>
    </div>
    <div class="alert alert-danger" style="display: none">
      <button
        type="button"
        class="close"
        data-dismiss="alert"
        aria-hidden="true"
      >
        &times;
      </button>
      <strong>Staff cannot found !</strong>
    </div>
    <div class="alert alert-warning 500" style="display: none">
      <button
        type="button"
        class="close"
        data-dismiss="alert"
        aria-hidden="true"
      >
        &times;
      </button>
      <strong>Account has been added info !</strong>
    </div>
    <div class="alert alert-warning 501" style="display: none">
      <button
        type="button"
        class="close"
        data-dismiss="alert"
        aria-hidden="true"
      >
        &times;
      </button>
      <strong>Account is not correct role !</strong>
    </div>
    <form @submit.prevent="editStaff">
      <div class="card h-100">
        <div class="card-body">
          <div class="row gutters">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
              <h6 class="mb-2 text-primary">Personal Details</h6>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12" v-if="add">
              <div class="form-group">
                <label>Username</label>
                <input
                  required
                  type="text"
                  class="form-control"
                  id="username"
                  placeholder="Enter Username"
                  name="username"
                  
                />
              </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
              <div class="form-group">
                <label>Full Name</label>
                <input
                  required
                  type="text"
                  class="form-control"
                  id="name"
                  placeholder="Enter full name"
                  name="name"
                  :value="data.name"
                />
              </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
              <div class="form-group">
                <label for="eMail">Email</label>
                <input
                  required
                  type="email"
                  class="form-control"
                  id="eMail"
                  placeholder="Enter email ID"
                  :value="data.email"
                  name="email"
                />
              </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
              <div class="form-group">
                <label for="phone">Phone</label>
                <input
                  required
                  type="text"
                  class="form-control"
                  id="phone"
                  placeholder="Enter phone number"
                  :value="data.phone_number"
                  name="phone_number"
                />
              </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
              <div class="form-group">
                <label>Position</label>
                <input
                  required
                  type="text"
                  class="form-control"
                  placeholder="Position"
                  :value="data.position"
                  name="position"
                />
              </div>
            </div>
            
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12" v-if="add">
              <div class="form-group">
                <label for="birthday">Birthday</label>
                <input
                  required
                  type="date"
                  class="form-control"
                  id="birthday"
                  placeholder="birthday"
                  name="birthday"
                />
              </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
              <div class="form-group">
                <label for="address">Adress</label>
                <input
                  required
                  type="text"
                  class="form-control"
                  id="address"
                  placeholder="Address"
                  :value="data.address"
                  name="address"
                />
              </div>
            </div>

            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12" v-if="add">
              <div class="form-group">
                <label for="avt">Avatar</label>
                <input
                  required
                  type="text"
                  class="form-control"
                  id="avt"
                  placeholder="Avartar"
                  :value="data.avt"
                  name="avt"
                />
              </div>
            </div>
          
          </div>
          <p v-if="errors.length">
            <b>Please correct the following error(s):</b>
            <ul>
              <li v-for="(error, index) in errors" :key="index">{{ error }}</li>
            </ul>
          </p>
          <div class="row gutters" v-if="add">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
              <div class="text-right">
                <button
                  type="submit"
                  id="submit"
                  name="submit"
                  class="btn btn-primary"
                >
                  Add Staff
                </button>
              </div>
            </div>
          </div>
          <div v-else class="row gutters">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
              <div class="text-right">
                <button
                  type="submit"
                  id="submit"
                  name="submit"
                  class="btn btn-primary"
                >
                  Update Staff
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
</template>
<script>
import axios from "axios";
import $ from "jquery";
export default {
  name: "edit-staff-fields",
  props: {
    data: {
      type: Object,
    },
    add: {
      type: Boolean,
    },
  },
  data() {
    return {
      data_post: {
        username: "",
        name: "",
        email: "",
        phone_number: "",
        birthday: "",
        position: "",
        address: "",
        avt: "",
      },
      errors: [],
    };
  },
  methods: {
    editStaff(e) {
      var url = `http://localhost:5050/staff/edit/${this.$route.params.id}`;

      this.data_post.name = e.target.elements.name.value;
      this.data_post.email = e.target.elements.email.value;
      this.data_post.phone_number = e.target.elements.phone_number.value;

      this.data_post.position = e.target.elements.position.value;
      this.data_post.address = e.target.elements.address.value;

      if (this.add) {
        this.data_post.username = e.target.elements.username.value;
        this.data_post.birthday = e.target.elements.birthday.value;
        this.data_post.avt = e.target.elements.avt.value;
        axios
          .post("http://localhost:5050/staff/add", this.data_post)
          .then((res) => {
            var response = res.data;
            console.log(response);
            if (response.status === 200) {
              $(".alert-success").css("display", "block").delay(3000).fadeOut();
              setTimeout(function () {
                location.reload();
              }, 1000);
            }
            if (response.status === 404) {
              $(".alert-danger").css("display", "block").delay(3000).fadeOut();
              setTimeout(function () {
                location.reload();
              }, 1000);
            }
            if (response.status === 501) {
              $(".alert-warning.501").css("display", "block").delay(3000).fadeOut();
              setTimeout(function () {
                location.reload();
              }, 2000);
            }
            if (response.status === 500) {
              $(".alert-warning.500").css("display", "block").delay(3000).fadeOut();
              setTimeout(function () {
                location.reload();
              }, 2000);
            }
          });
      } else {
        if (!this.errors.length) {
          axios.post(url, this.data_post).then(() => {
            this.$router.push("/staff");
          });
        } else {
          return e.preventDefault();
        }
      }
    },
  },
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
.form-control {
  border: 1px solid #cfd1d8;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  border-radius: 2px;
  font-size: 0.825rem;
  background: #ffffff;
  color: #2e323c;
}
.card {
  background: #ffffff;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
  border: 0;
  margin-bottom: 1rem;
}
</style>