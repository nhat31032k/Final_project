<template>
  <section style="margin-top: -10rem !important" class="intro-single">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-8">
          <div class="title-single-box">
            <h1 class="title-single">{{ data.room_name }}</h1>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import axios from 'axios'
export default {
  name: "intro-property-single",
  data() {
    return {
      data: "",
    };
  },
  mounted() {
    axios
      .get(`http://localhost:5050/room/${this.$route.params.id}`)
      .then((response) => {
        var obj = Object.assign({}, ...response.data);

        this.data= obj;
      });
  },
};
</script>

<style scoped>
h1,
h2,
h3,
h4,
h5,
h6 {
  color: #000000;
}

a {
  color: #000000;
  transition: all 0.5s ease;
}

a:hover {
  color: #2eca6a;
  text-decoration: none;
}

.link-two {
  color: #000000;
  transition: all 0.5s ease;
}

.link-two:hover {
  text-decoration: underline;
  color: #000000;
}

.link-one {
  color: #000000;
  transition: all 0.5s ease;
}

.link-one:hover {
  color: #000000;
  text-decoration: none;
}

.link-icon {
  color: #000000;
  font-weight: 500;
}

.link-icon span {
  font-size: 14px;
  padding-left: 4px;
  vertical-align: middle;
}

.link-a {
  color: #ffffff;
  text-decoration: none;
}

@media (min-width: 768px) {
  .link-a {
    font-size: 0.9rem;
  }
}

@media (min-width: 992px) {
  .link-a {
    font-size: 1rem;
  }
}

.link-a:hover {
  color: #ffffff;
  text-decoration: none;
}

.link-a span {
  font-size: 18px;
  vertical-align: middle;
  margin-left: 5px;
}

@media (min-width: 768px) {
  .link-a span {
    font-size: 1.5rem;
  }
}

@media (min-width: 992px) {
  .link-a span {
    font-size: 18px;
  }
}

.text-brand {
  color: #000000;
  font-size: 2rem;
  font-weight: 600;
}

@media (max-width: 767px) {
  .text-brand {
    font-size: 1.8rem;
  }
}

.color-a {
  color: #000000;
}

.color-b {
  color: #2eca6a;
}

.color-d {
  color: #adadad;
}

.color-text-a {
  color: #555555;
}

.no-margin {
  margin: 0;
}
/*------/ Intro Single /------*/
.intro-single {
  padding: 12rem 0 3rem;
}

@media (max-width: 767px) {
  .intro-single {
    padding-top: 9rem;
  }
}

.intro-single .title-single-box {
  padding: 1rem 0 1rem 2rem;
}

.intro-single .title-single-box {
  border-left: 3px solid #2eca6a;
}

.intro-single .title-single-box .title-single {
  font-weight: 600;
  font-size: 2.2rem;
}

@media (min-width: 768px) {
  .intro-single .title-single-box .title-single {
    font-size: 2.1rem;
  }
}

@media (min-width: 992px) {
  .intro-single .title-single-box .title-single {
    font-size: 2.5rem;
  }
}

.intro-single .breadcrumb-box {
  padding: 1rem 0 0 0.5rem;
}

.intro-single .breadcrumb {
  background-color: transparent;
  padding-right: 0;
  padding-left: 0;
}
</style>