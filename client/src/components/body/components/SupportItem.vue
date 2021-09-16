<template>
  <div class="col-lg-4">
    <div class="text-center card-box">
      <div class="member-card pt-2 pb-2">
        <div class="thumb-lg member-thumb mx-auto">
          <img
            :src="staff.avt"
            class="rounded-circle img-thumbnail"
            alt="profile-image"
          />
        </div>
        <div class="">
          <h4>{{ staff.name }}</h4>
          <p class="text-muted">
            {{ staff.position }} <span>| </span
            ><span>{{ staff.phone_number }}</span>
          </p>
        </div>
        <button
          @click="$router.push(`profile/${staff.id}`)"
          class="btn btn-primary mt-3 btn-rounded waves-effect w-md waves-light"
        >
          Contact
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "support-item",
  props: {
    staff: {
      type: Object,
    },
  },
};
</script>

<style scoped>
.card-box {
  padding: 20px;
  border-radius: 3px;
  margin-bottom: 30px;
  background-color: #fff;
}

.social-links li a {
  border-radius: 50%;
  color: rgba(121, 121, 121, 0.8);
  display: inline-block;
  height: 30px;
  line-height: 27px;
  border: 2px solid rgba(121, 121, 121, 0.5);
  text-align: center;
  width: 30px;
}

.social-links li a:hover {
  color: #797979;
  border: 2px solid #797979;
}
.thumb-lg {
  height: 88px;
  width: 88px;
}
.img-thumbnail {
  padding: 0.25rem;
  background-color: #fff;
  border: 1px solid #dee2e6;
  border-radius: 0.25rem;
  max-width: 100%;
  height: auto;
}
.text-pink {
  color: #ff679b !important;
}
.btn-rounded {
  border-radius: 2em;
}
.text-muted {
  color: #98a6ad !important;
}
h4 {
  line-height: 22px;
  font-size: 18px;
}
</style>