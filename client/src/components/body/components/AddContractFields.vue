<template>
  <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
    <div class="alert alert-success" style="display: none">
      <button
        type="button"
        class="close"
        data-dismiss="alert"
        aria-hidden="true"
      >
        &times;
      </button>
      <strong>Add contract success !</strong>
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
      <strong>Account hasn't exist in database !</strong>
    </div>

    <div class="alert alert-warning" style="display: none">
      <button
        type="button"
        class="close"
        data-dismiss="alert"
        aria-hidden="true"
      >
        &times;
      </button>
      <strong>Room has been created contract !</strong>
    </div>

    <form @submit.prevent="addContract">
      <div class="card h-100">
        <div class="card-body">
          <div class="row gutters">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
              <h6 class="mb-2 text-primary">Contract Details</h6>
            </div>

            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
              <div class="form-group">
                <label for="no_room">No.Room</label>
                <input
                  required
                  type="text"
                  id="no_room"
                  class="form-control"
                  placeholder="Enter No.Room"
                  name="no_room"
                  :value="data.no_room || $route.params.id_room"
                />
              </div>
            </div>

            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
              <div class="form-group">
                <label for="date-create">Date Create</label>
                <input
                  required
                  type="date"
                  id="date-create"
                  class="form-control"
                  placeholder="Position"
                  name="date_create"
                  :value="data.date_create"
                />
              </div>
            </div>

            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
              <div class="form-group">
                <label>Price</label>
                <input
                  required
                  class="form-control"
                  placeholder="Price"
                  name="price"
                  :value="data.price"
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
                  name="expiration"
                  :value="data.expiration"
                />
              </div>
            </div>
          </div>
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
import $ from "jquery";
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
        no_room: "",
        price: "",
        date_create: "",
        expiration: "",
      },
      errors: [],
    };
  },
  methods: {
    addContract(e) {
      this.errors = []
      this.data_post.no_room = e.target.elements.no_room.value;
      this.data_post.price = e.target.elements.price.value;
      this.data_post.date_create = e.target.elements.date_create.value;
      this.data_post.expiration = e.target.elements.expiration.value;

      axios
        .post("http://localhost:5050/person/add-contract", this.data_post)
        .then((res) => {
          var response = res.data;
          if (response.status === 200) {
            
            $(".alert-success").css("display", "block").delay(3000).fadeOut();
            setTimeout(function () {
              location.reload();
            }, 1000);
          }else if( response.status === 404){
            $(".alert-danger").css("display", "block").delay(3000).fadeOut();
            setTimeout(function () {
              location.reload();
            }, 1000);
          } else {
            $(".alert-warning").css("display", "block").delay(3000).fadeOut();
            setTimeout(function () {
              location.reload();
            }, 1000);
          }
        });
    },

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