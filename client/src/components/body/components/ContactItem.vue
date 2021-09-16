<template>
  <div class="col-md-4" v-if="info.id < 3">
    <div class="card-box-d">
      <div class="card-img-d">
        <img :src="info.avt" alt="" class="img-d img-fluid" />
      </div>
      <div class="card-overlay card-overlay-hover">
        <div class="card-header-d">
          <div class="card-title-d align-self-center">
            <h3 class="title-d">
              <router-link style="color: #fff" :to="`profile/${info.id}`" class="link-two">{{
                info.name
              }}</router-link>
            </h3>
          </div>
        </div>
        <div class="card-body-d">
          <p class="content-d"><strong>Positon: </strong> {{ info.position }}</p>
          <p class="content-d"><strong>Phone: </strong> {{ info.phone_number }}</p>
          <p class="content-d"><strong>Email: </strong> {{ info.email }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "contact-item",
  props: {
    info: Object,
  },
};
</script>

<style scoped>
.Contact-Staff {
  margin-top: 5rem;
}
.img-d {
  height: 350px;
  width: 100%;
}
.link-two {
  color: #000000;
  transition: all 0.5s ease;
}

.link-two:hover {
  text-decoration: underline;
  color: #000000;
}
.col-md-4 {
  margin-bottom: 20px;
}
@media (max-width: 767px) {
  .card-box-d {
    margin-bottom: 2.5rem;
  }
}

@media (min-width: 768px) {
  .grid .card-box-d {
    margin-bottom: 2.5rem;
  }
}

.card-box-d {
  position: relative;
  overflow: hidden;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

@media (min-width: 768px) {
  .card-box-b:hover .img-b {
    transform: scale(1.2);
  }
}

.card-overlay {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
}

.card-shadow {
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.card-shadow:before {
  content: " ";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 1;
  background: linear-gradient(
    to bottom,
    rgba(0, 0, 0, 0) 0%,
    rgba(0, 0, 0, 0.2) 27%,
    rgba(0, 0, 0, 0.65) 90%
  );
}
/*======================================
//--//-->   AGENTS - CARD-D
======================================*/
.card-box-d .card-overlay-hover {
  transition: all 0.2s ease-in-out;
  padding: 15px 40px 15px 35px;
}

@media (min-width: 768px) {
  .card-box-d .card-overlay-hover {
    padding: 5px 15px 5px 10px;
  }
}

@media (min-width: 992px) {
  .card-box-d .card-overlay-hover {
    padding: 5px 40px 5px 35px;
  }
}

@media (min-width: 1200px) {
  .card-box-d .card-overlay-hover {
    padding: 15px 40px 5px 35px;
  }
}

.card-box-d .title-d {
  transition: 0.3s ease-in-out;
  font-size: 2rem;
  font-weight: 600;
  margin: 1rem 0;
  transform: translateY(-20px);
  opacity: 0;
}

@media (min-width: 768px) {
  .card-box-d .title-d {
    font-size: 1.1rem;
    margin: 0.5rem 0;
  }
}

@media (min-width: 992px) {
  .card-box-d .title-d {
    font-size: 1.5rem;
    margin: 1rem 0;
  }
}

@media (min-width: 1200px) {
  .card-box-d .title-d {
    font-size: 2rem;
    margin: 1rem 0;
  }
}

.card-box-d .content-d {
  opacity: 0;
  color: #fff;
  transition: 0.5s ease-in-out;
  transform: translateY(-40px);
}

@media (min-width: 768px) {
  .card-box-d .content-d {
    font-size: 0.8rem;
    margin: 0.5rem 0;
  }
}

@media (min-width: 768px) {
  .card-box-d .card-body-d p {
    margin-bottom: 8px;
    font-size: 0.8rem;
  }
}

@media (min-width: 992px) {
  .card-box-d .card-body-d p {
    margin-bottom: 12px;
    font-size: 1rem;
  }
}

.card-box-d .card-footer-d {
  transition: 0.5s ease-in-out;
  transform: translateY(40px);
  opacity: 0;
  position: absolute;
  width: 100%;
  bottom: 10px;
  left: 0;
}

.card-box-d .list-inline-item:not(:last-child) {
  margin-right: 25px;
}

.card-box-d:hover .card-overlay-hover {
  background-color: #2eca6a;
  opacity: 0.9;
  color: #fff;
}

.card-box-d:hover .title-d,
.card-box-d:hover .content-d,
.card-box-d:hover .card-footer-d {
  opacity: 1;
  transform: translateY(0);
}
</style>
