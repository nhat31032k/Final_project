<template>
  <div>
    <div class="row">
      <div class="col-12">
        <div class="text-center text-150">
          <i class="fa fa-book fa-2x text-success-m2 mr-1"></i>
          <span class="text-default-d3">Payment Service</span>
        </div>
        <!--end of col-->
      </div>
    </div>

    <!-- .row -->

    <hr class="row brc-default-l1 mx-n1 mb-4" />

    <div class="row">
      <div class="col-sm-6">
        
        <div>
          <span class="text-sm text-grey-m2 align-middle">No.Room: </span>
          <span class="text-600 text-110 text-blue align-middle">{{
            data.room_name
          }}</span>
        </div>
        <div v-if="$store.state.role === 3">
          <span class="text-sm text-grey-m2 align-middle"
            >So du kha dung:
          </span>
          <span class="text-600 text-110 text-blue align-middle"
            >{{ new Intl.NumberFormat().format(data.sodukhadung) }} VND</span
          >
        </div>
      </div>
      <!-- /.col -->

      <div
        class="text-95 col-sm-6 align-self-start d-sm-flex justify-content-end"
      >
        <hr class="d-sm-none" />
        <div class="text-grey-m2">
          <div class="mt-1 mb-2 text-secondary-m1 text-600 text-125">
            Invoice
          </div>

          <div class="my-2">
            <i class="fa fa-circle text-blue-m2 text-xs mr-1"></i>
            <span class="text-600 text-90">ID bill:</span> {{ data.ID }}
          </div>

          <div class="my-2">
            <i class="fa fa-circle text-blue-m2 text-xs mr-1"></i>
            <span class="text-600 text-90">Date:</span> {{ new Date(data.month).toLocaleDateString() }}
          </div>

          <div class="my-2">
            <i class="fa fa-circle text-blue-m2 text-xs mr-1"></i>
            <span class="text-600 text-90">Status:</span>
             <span v-if="data.status === 'paid'" class="badge badge-success badge-pill px-25">{{
              data.status
            }}</span>
            <span v-else class="badge badge-warning badge-pill px-25">{{
              data.status
            }}</span>
            
          </div>
        </div>
      </div>
      <!-- /.col -->
    </div>
  </div>
</template>

<script>
export default {
  name: "payment-info",
  props: {
    data: {
      type: Object,
    },
  },
  data() {
    return {
      role: JSON.parse(localStorage.getItem('user')).role
    }
  },
};
</script>

<style scoped>
.text-secondary-d1 {
  color: #728299 !important;
}
.page-header {
  margin: 0 0 1rem;
  padding-bottom: 1rem;
  padding-top: 0.5rem;
  border-bottom: 1px dotted #e2e2e2;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-pack: justify;
  justify-content: space-between;
  -ms-flex-align: center;
  align-items: center;
}
.page-title {
  padding: 0;
  margin: 0;
  font-size: 1.75rem;
  font-weight: 300;
}
.brc-default-l1 {
  border-color: #dce9f0 !important;
}

.ml-n1,
.mx-n1 {
  margin-left: -0.25rem !important;
}
.mr-n1,
.mx-n1 {
  margin-right: -0.25rem !important;
}
.mb-4,
.my-4 {
  margin-bottom: 1.5rem !important;
}

hr {
  margin-top: 1rem;
  margin-bottom: 1rem;
  border: 0;
  border-top: 1px solid rgba(0, 0, 0, 0.1);
}

.text-grey-m2 {
  color: #888a8d !important;
}

.text-success-m2 {
  color: #86bd68 !important;
}

.font-bolder,
.text-600 {
  font-weight: 600 !important;
}
.form-control-borderless {
    border: none;
}

.form-control-borderless:hover, .form-control-borderless:active, .form-control-borderless:focus {
    border: none;
    outline: none;
    box-shadow: none;
}
</style>
