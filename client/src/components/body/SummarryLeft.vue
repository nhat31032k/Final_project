<template>
  <div class="col-md-5 col-lg-4">
    <div class="property-price d-flex justify-content-center foo">
      <div class="card-header-c d-flex">
        <div class="card-box-ico">
          <span class="ion-money">VNĐ</span>
        </div>
        <div class="card-title-c align-self-center">
          <h3 class="title-c">
            {{ new Intl.NumberFormat().format(data.price) }}
          </h3>
        </div>
      </div>
    </div>

    <div class="property-summary">
      <div class="row">
        <div class="col-sm-12">
          <div class="title-box-d section-t4">
            <h3 class="title-d">Quick Summary</h3>
          </div>
        </div>
      </div>
      <div class="summary-list">
        <ul class="list">
          <li class="d-flex justify-content-between">
            <strong>No.Room: </strong>
            <span>{{ room.room_name }}</span>
          </li>
          <li class="d-flex justify-content-between">
            <strong>Location: </strong>
            <span v-if="!room.room_name">Tầng x phòng x</span>
            <span v-if="room.room_name"
              >Tầng {{ room.room_name.slice(2, 3) }} phòng
              {{ room.room_name.slice(4, 5) }}</span
            >
          </li>
          <li class="d-flex justify-content-between">
            <strong>Area: </strong>
            <span>{{ data.dien_tich }}</span>
          </li>
          <li class="d-flex justify-content-between">
            <strong>Beds: </strong>
            <span v-if="room.room_name"> {{ beds }}</span>
          </li>
          <li class="d-flex justify-content-between">
            <strong>Baths: </strong>
            <span>{{ data.bath }}</span>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "summary-left",
  data() {
    return {
      data: "",
      room: "",
    };
  },
  mounted() {
    axios.get(`http://localhost:5050/typeroom/${this.typeRoom}`).then((response) => {
      
      var obj = Object.assign({}, ...response.data);
      this.data = obj;

      console.log(this.data, this.typeRoom);
    });
    axios
      .get(`http://localhost:5050/room/${this.$route.params.id}`)
      .then((response) => {
        var obj = Object.assign({}, ...response.data);

        this.room = obj;
      });
  },
  computed: {
    beds: function () {
      var type = this.room.room_name.slice(0, 1);
      if (type === "A") {
        return 1;
      }
      if (type === "B") {
        return 2;
      } else return 3;
    },
    typeRoom: function(){
      if ( this.$route.params.room.slice(0, 1) === 'A'){
        return 1
      }else if ( this.$route.params.room.slice(0, 1) === 'B'){
        return 2
      } else{
        return 3
      }
    }
  },
};
</script>

<style scoped>
/*======================================
//--//-->   SERVICES - CARD-C
======================================*/
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
  font-size: 3rem;
  color: #000000;
}

.title-c {
  font-size: 3rem;
  color: #000;
  font-weight: 600;
  margin-left: -40px;
}
li {
  margin: 10px auto;
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
