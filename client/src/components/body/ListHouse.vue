<template>
  <div class="row">
    
    <input
      class="form-control form-control-lg form-control-borderless"
      type="search"
      placeholder="Find House"
      v-model="searchQuery"
    />
    
    <house-item v-for="house in filteredResources" :key="house.id" :house="house" />
    
    <div class="pagination pb-0 pt-3">
      <jw-pagination :pageSize=10 :items="exampleItems" @changePage="onChangePage"></jw-pagination>
    </div>
  </div>
  
</template>

<script>
import HouseItem from "./components/HouseItem.vue";
import axios from 'axios'

export default {
  components: { HouseItem },
  name: "list-house",
  data() {
    return {
      searchQuery: null,
      exampleItems:[],
      listHouses: [],
    };
  },
  mounted() {
    axios.get("http://localhost:5050/room").then((response) => {
      this.listHouses = response.data;
       
      this.exampleItems=this.listHouses
    
    });
  },methods: {
    onChangePage(listHouses) {
        // update page of items
        this.listHouses =listHouses
    }
  },
   //search
  computed: {
    filteredResources() {
      if (this.searchQuery) {
        return this.listHouses.filter((item) => {
          return this.searchQuery
            .toLowerCase()
            .split(" ")
            .every((v) => item.room_name.toLowerCase().includes(v));
        });
      } else {
        return this.listHouses;
      }
    },
  },
};
</script>

<style scoped>
/********************* Shopping Demo-3 **********************/

.row {
  margin: 20px 10px;
  justify-content: center;
}
input{
  margin-bottom: 15px;
  width: 80%;
  float: right;
}
</style>