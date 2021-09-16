<template>
  <div class="col-md-8">
    <div class="card mb-3">
      <div class="card-body">
        <div class="row">
          <div class="col-sm-3">
            <h6 class="mb-0">ID</h6>
          </div>
          <div class="col-sm-9 text-secondary">{{ data[0].id }}</div>
        </div>
        <hr />
        <div class="row">
          <div class="col-sm-3">
            <h6 class="mb-0">Full Name</h6>
          </div>
          <div class="col-sm-9 text-secondary">{{ data[0].name }}</div>
        </div>
        <hr />
       
        <div class="row">
          <div class="col-sm-3">
            <h6 class="mb-0">Date create</h6>
          </div>
          <div class="col-sm-9 text-secondary">{{ new Date(data[0].date_created).toLocaleDateString() }}</div>
        </div>
        <hr />
        <div class="row">
          <div class="col-sm-3">
            <h6 class="mb-0">Expiration</h6>
          </div>
          <div class="col-sm-9 text-secondary">
            {{ new Date(data[0].date_expiration).toLocaleDateString() }}
          </div>
        </div>
        <hr />
        <div class="row">
          <div class="col-sm-3">
            <h6 class="mb-0">Phone</h6>
          </div>
          <div class="col-sm-9 text-secondary">
            {{ data[0].phone_number }}
          </div>
        </div>
        <hr />
        <div class="row">
          <div class="col-sm-3">
            <h6 class="mb-0">Price</h6>
          </div>
          <div class="col-sm-9 text-secondary">{{ new Intl.NumberFormat().format(data[0].price) }} VNĐ</div>
        </div>
        <hr />
        <div class="row">
          <div class="col-sm-3">
            <h6 class="mb-0">Status</h6>
          </div>
          <div class="col-sm-9 text-secondary">{{ data[0].status }}</div>
        </div>
       
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "staff-detail-component",
  props: {
    data: {
      type: Array,
    },
  },
};
</script>
<style>
</style>