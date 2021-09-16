<template>
  <div class="col-lg-12 mt-4 mt-lg-0">
    <div class="row">
      <div class="col-md-12">
        <div
          class="user-dashboard-info-box table-responsive mb-0 bg-white p-4 shadow-sm"
        >
          <div class="search" style="display: flex; justify-content: space-between;">
            <input
              class="form-control form-control-lg form-control-borderless"
              type="search"
              placeholder="Find User"
              v-model="searchQuery"
              style="width: 70%"
            />
            <button  class="btn btn-success "  @click="$router.push('add-contract')">Add Contract</button>
        
          </div>
          
          <table class="table manage-candidates-top mb-0">
            <thead>
              <tr>
                <th>#</th>
                <th>Name</th>
                <th class="action text-right">Action</th>
              </tr>
            </thead>
            <tbody>
              <ContractItem v-for="item in filteredResources" :key="item.id" :item="item" />
            </tbody>
          </table>
          <div class="pagination pb-0 pt-3">
            <jw-pagination
              :pageSize="6"
              :items="exampleItems"
              @changePage="onChangePage"
            ></jw-pagination>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import ContractItem from "./components/ContractItem";
import axios from "axios";
export default {
  components: {
    ContractItem,
  },
  data() {
    return {
      searchQuery: null,
      data: [],
      exampleItems: [],
    };
  },
  mounted() {
    axios.get("http://localhost:5050/person/contracts").then((response) => {
      this.data = response.data;
      this.exampleItems = response.data;
    });
  },
  methods: {
    onChangePage(items) {
      // update page of items
      this.data = items;
    },
  },
  //search
  computed: {
    filteredResources() {
      if (this.searchQuery) {
        return this.data.filter((item) => {
          return this.searchQuery
            .toLowerCase()
            .split(" ")
            .every((v) => item.name.toLowerCase().includes(v));
        });
      } else {
        return this.data;
      }
    },
  },

};
</script>
<style>
/* user-dashboard-info-box */
.user-dashboard-info-box .candidates-list .thumb {
  margin-right: 20px;
}
.user-dashboard-info-box .candidates-list .thumb img {
  width: 80px;
  height: 80px;
  -o-object-fit: cover;
  object-fit: cover;
  overflow: hidden;
  border-radius: 50%;
}

.user-dashboard-info-box .title {
  
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  padding: 30px 0;
}

.user-dashboard-info-box .candidates-list td {
  vertical-align: middle;
}

.user-dashboard-info-box td li {
  margin: 0 4px;
}

.user-dashboard-info-box .table thead th {
  border-bottom: none;
}

.table.manage-candidates-top th {
  border: 0;
}

.user-dashboard-info-box
  .candidate-list-favourite-time
  .candidate-list-favourite {
  margin-bottom: 10px;
}

.table.manage-candidates-top {
  min-width: 650px;
}

.user-dashboard-info-box .candidate-list-details ul {
  color: #969696;
}

</style>