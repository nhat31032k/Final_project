<template>
  <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
    <form @submit.prevent="editUser">
      <div class="card h-100">
        <div class="card-body">
          <div class="row gutters">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
              <h6 class="mb-2 text-primary">Personal Details</h6>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
              <div class="form-group">
                <label for="fullName">Full Name</label>
                <input
                  required
                  type="text"
                  class="form-control"
                  id="fullName"
                  name="name"
                  placeholder="Enter full name"
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
                  name="email"
                  :value="data.email"
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
                  name="phone_number"
                  placeholder="Enter phone number"
                  :value="data.phone_number"
                />
              </div>
            </div>
            
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12" v-if="!data">
              <div class="form-group">
                <label for="birthday">Birthday</label>
                <input
                  required
                  type="date"
                  class="form-control"
                  id="birthday"
                  placeholder="birthday"
                  name="birthday"
                  :value="new Date(data.birthday).toLocaleDateString()"
                />
              </div>
            </div>
            <p v-if="errors.length">
            <b>Please correct the following error(s):</b>
            <ul>
              <li v-for="(error, index) in errors" :key="index">{{ error }}</li>
            </ul>
          </p>
          </div>
          <div class="row gutters">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
              <div class="text-right">
                <button
                  type="submit"
                  id="submit"
                  name="submit"
                  class="btn btn-primary"
                >
                  Update
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
import axios from 'axios';
export default {
  name: "add-member-field",
  props: {
    data: {
      type: Object,
    },
  },
   data() {
    return {
      data_post: {
        name: "",
        email: "",
        phone_number: "",
        salary: "",
        birthday: "",
        position: "",
        address: '',
        avt: ""
      },
      errors: [],
    };
  },
  methods: {
    editUser(e){
      var url = `http://localhost:5050/person/edit/${this.$route.params.id_member}`


      this.data_post.name = e.target.elements.name.value;
      this.data_post.email = e.target.elements.email.value;
      this.data_post.phone_number = e.target.elements.phone_number.value;   
     

      if (!this.errors.length) {
        axios
          .post(url, this.data_post)
          .then((res) =>{
            console.log(res);
            this.$router.push("/user")
          })
      }else{
        return e.preventDefault();
      }
    }
  },
};
</script>
<style scoped>
.form-control {
  border: 1px solid #cfd1d8;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  border-radius: 2px;
  font-size: 0.825rem;
  background: #ffffff;
  color: #2e323c;
  margin: auto;
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