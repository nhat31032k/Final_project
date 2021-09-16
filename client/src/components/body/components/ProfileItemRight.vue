<template>
  <div class="col-md-8">
    <div class="card mb-3">
      <div class="card-body">
        <div class="row">
          <div class="col-sm-3">
            <h6 class="mb-0">Full Name</h6>
          </div>
          <div class="col-sm-9 text-secondary">{{ info.name }}</div>
        </div>
        <hr />
        <div class="row">
          <div class="col-sm-3">
            <h6 class="mb-0">Email</h6>
          </div>
          <div class="col-sm-9 text-secondary">{{ info.email }}</div>
        </div>
        <hr />
        <div class="row">
          <div class="col-sm-3">
            <h6 class="mb-0">Phone</h6>
          </div>
          <div class="col-sm-9 text-secondary">{{ info.phone_number }}</div>
        </div>
       
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "profile-item-right",
  props: {
    info: {
      type: Object
    }
  },
};
</script>
<style scoped>
.card {
  box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06);
}

.card {
  position: relative;
  display: flex;
  flex-direction: column;
  min-width: 0;
  word-wrap: break-word;
  background-color: #fff;
  background-clip: border-box;
  border: 0 solid rgba(0, 0, 0, 0.125);
  border-radius: 0.25rem;
}

.card-body {
  flex: 1 1 auto;
  min-height: 1px;
  padding: 1rem;
}

.gutters-sm {
  margin-right: -8px;
  margin-left: -8px;
}

.gutters-sm > .col,
.gutters-sm > [class*="col-"] {
  padding-right: 8px;
  padding-left: 8px;
}
.mb-3,
.my-3 {
  margin-bottom: 1rem !important;
}

.bg-gray-300 {
  background-color: #e2e8f0;
}
.h-100 {
  height: 100% !important;
}
.shadow-none {
  box-shadow: none !important;
}
</style>