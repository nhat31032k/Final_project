<template>
  <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
    <div class="card h-100">
      <div class="card-body">
        <div class="row gutters">
          <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <h6 class="mb-2 text-primary">Personal Details</h6>
          </div>
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
            <div class="form-group">
              <label for="fullName">Full Name</label>
              <input
                style="pointer-events: none; background-color: #e8e6e6"
                type="text"
                name="name"
                class="form-control"
                id="fullName"
                value="Nguyễn Văn A"
              />
            </div>
          </div>
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
            <div class="form-group">
              <label>No.Room</label>
              <input
                type="text"
                name="room"
                class="form-control"
                id="room"
                value="Enter your No.Room"
              />
            </div>
          </div>
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
            <div class="form-group">
              <label>Month</label>
              <input
                style="pointer-events: none; background-color: #e8e6e6"
                type="text"
                name="month"
                class="form-control"
                id="month"
                value="July"
              />
            </div>
          </div>
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
            <div class="form-group">
              <label>Status</label>
              <input
                style="pointer-events: none; background-color: #e8e6e6"
                type="text"
                name="status"
                class="form-control"
                id="status"
                value="Unpaid"
              />
            </div>
          </div>
        </div>
        <div class="row gutters">
          <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <h6 class="mt-3 mb-2 text-primary">Payment</h6>
          </div>
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
            <div class="form-group">
              <label for="Electricity">Tiền điện</label>
              <input
                type="name"
                class="form-control"
                id="Electrictity"
                value="200.000 VNĐ"
              />
            </div>
          </div>
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
            <div class="form-group">
              <label for="water">Tiền nước</label>
              <input
                type="name"
                class="form-control"
                id="water"
                value="100.000 VNĐ"
              />
            </div>
          </div>
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
            <div class="form-group">
              <label for="internet">Internet</label>
              <input
                type="text"
                class="form-control"
                id="internet"
                value="200.000 VNĐ"
              />
            </div>
          </div>
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
            <div class="form-group">
              <label for="parking">Phí giữ xe</label>
              <input
                type="text"
                class="form-control"
                id="parking"
                value="500.000 VNĐ"
              />
            </div>
          </div>
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
            <div class="form-group">
              <label for="trash">Rác</label>
              <input
                type="text"
                class="form-control"
                id="trash"
                value="20.000 VNĐ"
              />
            </div>
          </div>

          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
            <div class="form-group">
              <label for="other">Khác</label>
              <input
                type="text"
                class="form-control"
                id="other"
                value="200.000 VNĐ"
              />
            </div>
          </div>
          <h4>Tổng tiền: 5.000.000 VNĐ</h4>
        </div>

        <div class="row gutters">
          <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="text-right">
              <button
                type="button"
                id="submit"
                name="submit"
                class="btn btn-success"
              >
                Confirm
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "payment-item-right",
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
