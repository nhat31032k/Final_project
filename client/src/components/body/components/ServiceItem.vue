<template>
  <div class="col-md-4">
    <div class="card-box-c foo">
      <div class="card-header-c d-flex">
        <div class="card-box-ico">
          <span :class="item.icon"></span>
        </div>
        <div class="card-title-c align-self-center">
          <h2 class="title-c" style="font-size: 2rem">{{ item.title }}</h2>
        </div>
      </div>
      <div class="card-body-c">
        <p class="content-c">
          {{ item.desc }}
        </p>
      </div>
      <div class="card-footer-c">
        <router-link :to="item.to"  class="link-c link-icon"
          >Xem thêm
          <span class="ion-ios-arrow-forward"></span>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "service-item",
  props: {
    item: {
      type: Object,
    },
  },
};
</script>

<style scoped>

.card-box-c {
  position: relative;
}

@media (max-width: 767px) {
  .card-box-c {
    margin-bottom: 2rem;
  }
}

.card-header-c {
  padding: 0 1rem 1rem 1rem;
}

.card-body-c {
  padding: 0.5rem 0.5rem 0 0.5rem;
}

@media (max-width: 767px) {
  .card-body-c {
    padding: 0;
  }
}

.card-footer-c {
  padding-left: 0.5rem;
}

.card-box-ico {
  padding: 1rem 3rem 1rem 2.5rem;
  border: 5px solid #2eca6a;
}

.card-box-ico span {
  font-size: 4rem;
  color: #000000;
}

.title-c {
  font-size: 2.5rem;
  font-weight: 600;
  margin-left: -40px;
}

@media (min-width: 768px) {
  .title-c {
    font-size: 1.8rem;
  }
}

@media (min-width: 992px) {
  .title-c {
    font-size: 2.5rem;
  }
}
</style>
