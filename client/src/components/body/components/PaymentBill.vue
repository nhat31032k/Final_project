<template>
  <div class="mt-4">
    <div class="alert alert-danger" style="display: none">
      <button
        type="button"
        class="close"
        data-dismiss="alert"
        aria-hidden="true"
      >
        &times;
      </button>
      <strong>Cảnh báo !</strong> Số dư không đủ để thực hiện thanh toán !
    </div>
    <div class="alert alert-success" style="display: none">
      <button
        type="button"
        class="close"
        data-dismiss="alert"
        aria-hidden="true"
      >
        &times;
      </button>
      <strong>Thanh toán thành công !</strong>
    </div>
    <div class="row text-600 text-white bgc-default-tp1 py-25">
      <div class="d-none d-sm-block col-1">#</div>
      <div class="col-9" style="text-align: center">Fee Name</div>
      <div class="d-none d-sm-block col-2" style="text-align: center">
        Price
      </div>
    </div>
    <form @submit.prevent="payment">
      <div class="row border-b-2 brc-default-l2"></div>

      <bill-detail :billDetails="data" />

      <div class="row mt-3">
        <div class="col-12 col-sm-7 text-grey-d2 text-95 mt-2 mt-lg-0">
          Extra note such as company or payment information...
        </div>

        <div
          class="col-12 col-sm-5 text-grey text-90 order-first order-sm-last"
        >
          <div class="row my-2 align-items-center bgc-primary-l3 p-2">
            <div class="col-5 text-right">Total Amount</div>
            <div class="col-7">
              <span
                v-if="data.status === 'paid'"
                class="text-150 text-success-d3 opacity-2"
                >Bạn đã thanh toán thành công !</span
              >
              <span v-else class="text-150 text-success-d3 opacity-2"
                >{{ new Intl.NumberFormat().format(total) }} VNĐ</span
              >
            </div>
          </div>
        </div>
      </div>

      <hr />

      <div>
        <span class="text-secondary-d1 text-105"
          >Thank you for your payment</span
        >
        <button
          class="btn btn-info btn-bold px-4 float-right mt-3 mt-lg-0"
          type="submit"
          v-if="data.status === 'unpaid' && role === 3"
        >
          Pay Now
        </button>
        <button
          class="btn btn-success btn-bold px-4 float-right mt-3 mt-lg-0"
          type="submit"
          v-if="data.status === 'unpaid' && role === 2"
        >
          Pay Now
        </button>
      </div>
    </form>
  </div>
</template>

<script>
import BillDetail from "./BillDetail";
import axios from "axios";
import $ from "jquery";
export default {
  name: "payment-bill",
  props: {
    data: {
      type: Object,
    },
  },
  data() {
    return {
      total:
        this.data.dien +
        this.data.nuoc +
        this.data.internet +
        this.data.rac +
        this.data.giuxe +
        this.data.khac,
      role: JSON.parse(localStorage.getItem("user")).role,
    };
  },
  components: {
    BillDetail,
  },
  methods: {
    payment() {
      var url = "http://localhost:5050/service/payment";
      var tmp = JSON.parse(localStorage.getItem("user"));
      var data = {
        sodukhadung: this.data.sodukhadung,
        total: this.total,
      };

      if (this.total > this.data.sodukhadung && this.role === 3) {
        $(".alert-danger").css("display", "block").delay(3000).fadeOut();
        return false;
      }
      if (this.role === 2) {
        axios
          .post(
            `http://localhost:5050/service/payment/${this.data.room_name}`,
            data
          )
          .then(() => {
            $(".alert-success").css("display", "block").delay(3000).fadeOut();
            setTimeout(function () {
              location.reload();
            }, 3000);
          });
      } else {
        axios
          .post(url, data, {
            headers: {
              "Content-Type": "application/json",
              authorization: `Bearer ${tmp.token}`, //the token is a variable which holds the token
            },
          })
          .then(() => {
            $(".alert-success").css("display", "block").delay(3000).fadeOut();
            setTimeout(function () {
              location.reload();
            }, 3000);
          });
      }
    },
  },
};
</script>

<style scoped>
/* Alert */
.alert-danger {
  background-color: #f2dede;
  border-color: #e0b1b8;
  color: #b94a48;
}

.alert-white.alert-danger .icon,
.alert-white.alert-danger .icon:after {
  border-color: #ca452e;
  background: #da4932;
}
.alert {
  border-radius: 0;
  -webkit-border-radius: 0;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.11);
  display: table;
  width: 100%;
}

.alert-white {
  background-image: linear-gradient(to bottom, #fff, #f9f9f9);
  border-top-color: #d8d8d8;
  border-bottom-color: #bdbdbd;
  border-left-color: #cacaca;
  border-right-color: #cacaca;
  color: #404040;
  padding-left: 61px;
  position: relative;
}

.alert-white.rounded {
  border-radius: 3px;
  -webkit-border-radius: 3px;
}

.alert-white.rounded .icon {
  border-radius: 3px 0 0 3px;
  -webkit-border-radius: 3px 0 0 3px;
}

.alert-white .icon {
  text-align: center;
  width: 45px;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  border: 1px solid #bdbdbd;
  padding-top: 15px;
}

.alert-white .icon:after {
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -o-transform: rotate(45deg);
  transform: rotate(45deg);
  display: block;
  content: "";
  width: 10px;
  height: 10px;
  border: 1px solid #bdbdbd;
  position: absolute;
  border-left: 0;
  border-bottom: 0;
  top: 50%;
  right: -6px;
  margin-top: -3px;
  background: #fff;
}

.alert-white .icon i {
  font-size: 20px;
  color: #fff;
  left: 12px;
  margin-top: -10px;
  position: absolute;
  top: 50%;
}
/*  */
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
