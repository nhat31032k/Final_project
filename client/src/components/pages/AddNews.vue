<template>
  <div>
    <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12 container">
      <form @submit.prevent="addNews">
        <div class="card h-100">
          <div class="card-body">
            <div class="row gutters">
              <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <h3 class="mb-2 text-primary dangtin">Đăng Tin</h3>
              </div>
              <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9 col-12">
                <div class="form-group">
                  <label for="Title">Title</label>
                  <input
                    type="text"
                    v-model="data.title"
                    class="form-control"
                    id="titile"
                    placeholder="Enter Tiltle"
                  />
                </div>
              </div>
              <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9 col-12">
                <div class="form-group">
                  <label for="content">Content</label>
                  <textarea
                    class="form-control"
                    id="content"
                    v-model="data.content"
                    placeholder="Enter Content"
                    style="height: 200px"
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
            <div class="row gutters">
              <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9 col-12">
                <div class="text-right">
                  <button
                    type="submit"
                    id="submit"
                    name="submit"
                    class="btn btn-primary"
                  >
                    ĐĂNG
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
    <NavbarFooter />
  </div>
</template>
<script>
import NavbarFooter from "./NavbarFooter";
import axios from 'axios'
export default {
  components: {
    NavbarFooter,
  },
  data() {
    return {
      data: {
        title: "",
        content: "",
        author: JSON.parse(localStorage.getItem("user")).username,
      },
      errors: [],
    };
  },
  methods: {
    addNews(e) {
      
      if ( this.data.content === '') {
        this.errors.push('Vui long nhap noi dung thong bao !');
      }else{
        this.errors.pop('Vui long nhap noi dung thong bao !');
      }

      if ( this.data.title === '') {
        this.errors.push('Vui long nhap tieu de thong bao !');
      }else{
        this.errors.pop('Vui long nhap tieu de thong bao !');
      }

      var url = 'http://localhost:5050/news/add'
      if( !this.errors.length){

        axios
          .post(url, this.data)
          .then((res) => {
            console.log(res);
            this.$router.push('/news-staff')
          })
      }else{
        return e.preventDefault();
      }

      
    },
  },
};
</script>
<style>
label {
  font-size: 18px;
}
.row {
  justify-content: center;
}
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
h3.dangtin {
  text-align: center;
}
</style>