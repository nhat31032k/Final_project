<template>
  <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
    <form @submit.prevent="updateContract">
      <div class="card h-100">
        <div class="card-body">
          <div class="row gutters">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
              <h6 class="mb-2 text-primary">Contract Details</h6>
            </div>

            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
              <div class="form-group">
                <label for="date-create">Status</label>
                <input
                  required
                  type="text"
                  id="date-create"
                  class="form-control"
                  placeholder="Position"
                  :value="data.status"
                  name="status"
                />
              </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
              <div class="form-group">
                <label for="date-create">Price</label>
                <input
                  required
                  type="text"
                  id="date-create"
                  class="form-control"
                  placeholder="Position"
                  :value="data.price"
                  name="price"
                />
              </div>
            </div>

            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
              <div class="form-group">
                <label for="expiration">Expiration</label>
                <input
                  required
                  type="date"
                  class="form-control"
                  id="expiration"
                  placeholder="Expiration"
                  :value="data.expiration"
                  name="expiration"
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
          <div v-if="data" class="row gutters">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
              <div class="text-right">
                <button
                  type="submit"
                  id="submit"
                  name="submit"
                  class="btn btn-primary"
                >
                  Update constract
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
                  Add constract
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
export default {
  name: "edit-staff-fields",
  props: {
    data: {
      type: Object,
    },
  },
  data() {
    return {
      data_post: {
        status: '',
        expiration: '',
        price: ''
      },
      errors: []
    }
  },
  methods: {
    updateContract (e){
      var url = `http://localhost:5050/person/edit-contract/${this.$route.params.id}`

      if ( isNaN(e.target.elements.price.value) ){
        this.errors.push('Price must be a number !')
      }else{
        this.errors.pop('Price must be a number !')
      }

      this.data_post.status = e.target.elements.status.value;
      this.data_post.expiration = e.target.elements.expiration.value;
      this.data_post.price = e.target.elements.price.value;

      if (!this.errors.length) {
        axios
          .post(url, this.data_post)
          .then((res) =>{
            console.log(res);
            this.$router.push("/list-contracts")
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