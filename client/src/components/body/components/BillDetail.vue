<template>
  <div>
    <div
      class="text-95 text-secondary-d3"
      style="border-bottom: 0.5px solid #000"
    >
      <div class="row mb-2 mb-sm-0 py-25">
        <div class="d-none d-sm-block col-1" style="padding: 10px">1</div>
        <div class="col-9" style="text-align: center; padding: 10px">
          Tiền điện
        </div>
        <div class="col-2 text-secondary-d2">
          <input
            name="electricity"
            type="text"
            :value="`${new Intl.NumberFormat().format(billDetails.dien)} VNĐ`"
            style="
              border: none;
              width: 100%;
              pointer-events: none;
              text-align: right;
            "
          />
        </div>
      </div>
    </div>

     <div
      class="text-95 text-secondary-d3"
      style="border-bottom: 0.5px solid #000"
    >
      <div class="row mb-2 mb-sm-0 py-25">
        <div class="d-none d-sm-block col-1" style="padding: 10px">2</div>
        <div class="col-9" style="text-align: center; padding: 10px">
          Tiền nước
        </div>
        <div class="col-2 text-secondary-d2">
          <input
            name="water"
            type="text"
            :value="`${new Intl.NumberFormat().format(billDetails.nuoc)} VNĐ`"
            style="
              border: none;
              width: 100%;
              pointer-events: none;
              text-align: right;
            "
          />
        </div>
      </div>
    </div>

     <div
      class="text-95 text-secondary-d3"
      style="border-bottom: 0.5px solid #000"
    >
      <div class="row mb-2 mb-sm-0 py-25">
        <div class="d-none d-sm-block col-1" style="padding: 10px">3</div>
        <div class="col-9" style="text-align: center; padding: 10px">
          Internet
        </div>
        <div class="col-2 text-secondary-d2">
          <input
            name="internet"
            type="text"
            :value="`${new Intl.NumberFormat().format(billDetails.internet)} VNĐ`"
            style="
              border: none;
              width: 100%;
              pointer-events: none;
              text-align: right;
            "
          />
        </div>
      </div>
    </div>

     <div
      class="text-95 text-secondary-d3"
      style="border-bottom: 0.5px solid #000"
    >
      <div class="row mb-2 mb-sm-0 py-25">
        <div class="d-none d-sm-block col-1" style="padding: 10px">4</div>
        <div class="col-9" style="text-align: center; padding: 10px">
          Rác
        </div>
        <div class="col-2 text-secondary-d2">
          <input
            name="trash"
            type="text"
            :value="`${new Intl.NumberFormat().format(billDetails.rac)} VNĐ`"
            style="
              border: none;
              width: 100%;
              pointer-events: none;
              text-align: right;
            "
          />
        </div>
      </div>
    </div>

     <div
      class="text-95 text-secondary-d3"
      style="border-bottom: 0.5px solid #000"
    >
      <div class="row mb-2 mb-sm-0 py-25">
        <div class="d-none d-sm-block col-1" style="padding: 10px">5</div>
        <div class="col-9" style="text-align: center; padding: 10px">
          Giữ xe
        </div>
        <div class="col-2 text-secondary-d2">
          <input
            name="paking"
            type="text"
            :value="`${new Intl.NumberFormat().format(billDetails.giuxe)} VNĐ`"
            style="
              border: none;
              width: 100%;
              pointer-events: none;
              text-align: right;
            "
          />
        </div>
      </div>
    </div>

     <div
      class="text-95 text-secondary-d3"
      style="border-bottom: 0.5px solid #000"
    >
      <div class="row mb-2 mb-sm-0 py-25">
        <div class="d-none d-sm-block col-1" style="padding: 10px">6</div>
        <div class="col-9" style="text-align: center; padding: 10px">
          Khác
        </div>
        <div class="col-2 text-secondary-d2">
          <input
            type="text"
            :value="`${new Intl.NumberFormat().format(billDetails.khac)} VNĐ`"
            style="
              border: none;
              width: 100%;
              pointer-events: none;
              text-align: right;
            "
          />
        </div>
      </div>
    </div>
    
  </div>
</template>

<script>
export default {
  name: "bill-detail",
  props: {
     billDetails: {
       type: Object
     }
  }
  
};
</script>

<style scoped>
.text-110 {
  font-size: 110% !important;
}
.text-blue {
  color: #478fcc !important;
}
.pb-25,
.py-25 {
  padding-bottom: 0.75rem !important;
}

.pt-25,
.py-25 {
  padding-top: 0.75rem !important;
}
.bgc-default-tp1 {
  background-color: rgba(121, 169, 197, 0.92) !important;
}
.bgc-default-l4,
.bgc-h-default-l4:hover {
  background-color: #f3f8fa !important;
}
.page-header .page-tools {
  -ms-flex-item-align: end;
  align-self: flex-end;
}

.btn-light {
  color: #757984;
  background-color: #f5f6f9;
  border-color: #dddfe4;
}
.w-2 {
  width: 1rem;
}

.text-120 {
  font-size: 120% !important;
}
.text-primary-m1 {
  color: #4087d4 !important;
}

.text-danger-m1 {
  color: #dd4949 !important;
}
.text-blue-m2 {
  color: #68a3d5 !important;
}
.text-150 {
  font-size: 150% !important;
}
.text-60 {
  font-size: 60% !important;
}
.text-grey-m1 {
  color: #7b7d81 !important;
}
.align-bottom {
  vertical-align: bottom !important;
}
</style>
