<template lang="">
  <div class="Nha_Trong">
    <div class="container title_nha_trong">
      <div class="title_list_all">
        <h1 class="title">Căn hộ</h1>
        <input
          class="form-control form-control-lg form-control-borderless"
          type="search"
          placeholder="Find House"
          v-model="searchQuery"
        />
      </div>
      <div class="row pb-5 mb-4">
        <emptyhouse-item v-for=" item in filteredResources" :key="item.ID" :item="item" />
      </div>
      <div class="pagination pb-0 pt-3">
        <jw-pagination :pageSize=6 :items="exampleItems" @changePage="onChangePage"></jw-pagination>
      </div>
     
    </div>
  </div>
</template>
<script>
import EmptyhouseItem from "./components/EmptyHouseItem";
import axios from "axios";
export default {
  name: "list-emptyhouse",
  data() {
    return {
      searchQuery: null,
      items: [],
      exampleItems:[]
    };
  },
  mounted() {
    axios.get("http://localhost:5050/room/empty").then((response) => {
      this.items = response.data;
      console.log(this.items)
      this.exampleItems = this.items
    });
  },
  components: {
    EmptyhouseItem,
  },
  methods: {
    onChangePage(items) {
        // update page of items
        this.items =items
    }
  },
   //search
  computed: {
    filteredResources() {
      if (this.searchQuery) {
        return this.items.filter((item) => {
          return this.searchQuery
            .toLowerCase()
            .split(" ")
            .every((v) => item.room_name.toLowerCase().includes(v));
        });
      } else {
        return this.items;
      }
    },
  },
};
</script>

<style Scoped>
.Nha_Trong {
  margin-top: 10rem !important;
}
.title_nha_trong {
  margin-bottom: 2rem;
}
h1.title {
  font-size: 40px;
}
.title {
  padding-left: 5px;
  border-left: 3px solid rgb(83, 240, 161);
}
.title_list_all {
  display: flex;
  justify-content: space-between;
}
.title_list_all input{
  width: 30%;
}

input[type="text"] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: 1px solid gray;
}
.pagination {
  display: flex;
  justify-content: center;
}
</style>
