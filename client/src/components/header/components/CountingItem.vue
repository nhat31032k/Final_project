<template>
  <div class="row">
    <div class="col-md-4 col-xl-3" v-for="item in items" :key="item.id">
      <div :class="item.color">
        <div class="card-block">
          <h4 class="m-b-20">{{ item.title }}</h4>
          <h2 class="text-right">
            <i :class="item.icon"></i
            ><span>{{ new Intl.NumberFormat().format(item.num) }}</span>
          </h2>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "counting-item",
  data() {
    return {
      counting: "",
      items: [
        {
          id: 1,
          color: "card bg-c-blue order-card",
          icon: "fas fa-users f-left",
          num: 11111,
          title: "User",
        },
        {
          id: 2,
          color: "card bg-c-yellow order-card",
          icon: "fas fa-wifi f-left",
          num: 12345.0,
          title: "Internet",
        },
        {
          id: 3,
          color: "card bg-c-green order-card",
          icon: "fas fa-hand-holding-water f-left",
          num: 12300.0,
          title: "Water",
        },
        {
          id: 4,
          color: "card bg-c-pink order-card",
          icon: "fas fa-home f-left",
          num: 1232.0,
          title: "Empty",
        },
      ],
    };
  },
  methods: {
    show() {
      console.log(this.counting);
    },
  },
  mounted() {
    axios.get("http://localhost:5050/counting/service").then((response) => {
      var obj = Object.assign({}, ...response.data);
      this.counting = obj;
    });
  },
};
</script>

<style scoped>
.order-card {
  color: #fff;
}

.bg-c-blue {
  background: linear-gradient(45deg, #4099ff, #73b4ff);
}

.bg-c-green {
  background: linear-gradient(45deg, #2ed8b6, #59e0c5);
}

.bg-c-yellow {
  background: linear-gradient(45deg, #ffb64d, #ffcb80);
}

.bg-c-pink {
  background: linear-gradient(45deg, #ff5370, #ff869a);
}

.card {
  border-radius: 5px;
  -webkit-box-shadow: 0 1px 2.94px 0.06px rgba(4, 26, 55, 0.16);
  box-shadow: 0 1px 2.94px 0.06px rgba(4, 26, 55, 0.16);
  border: none;
  margin-bottom: 30px;
  -webkit-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

.card .card-block {
  padding: 25px;
}

.order-card i {
  font-size: 26px;
}

.f-left {
  float: left;
}

.f-right {
  float: right;
}
</style>
