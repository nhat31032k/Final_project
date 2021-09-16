<template>
  <div class="row">
    <div class="col-lg-12">
      <div class="card border-0 shadow">
        <div class="card-body p-5">
          <!-- Responsive table -->
          <div class="table-responsive">
            <div class="col-12 col-md-10 col-lg-12">
              <form class="card card-sm">
                <div class="card-body row no-gutters align-items-center">
                  <div class="col-auto">
                    <i class="fas fa-search h4 text-body"></i>
                  </div>
                  <!--end of col-->
                  <div class="col">
                    <input
                      class="form-control form-control-lg form-control-borderless"
                      type="search"
                      placeholder="Find User"
                      v-model="searchQuery"
                    />
                  </div>
                </div>
              </form>
            </div>
            
            <table class="table m-0">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">No.Room</th>
                  <th scope="col">Full Name</th>
                </tr>
              </thead>
              <tbody>
                <user-item
                  v-for="user in filteredResources"
                  :key="user.id"
                  :user="user"
                />
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div class="pagination pb-0 pt-3">
      <jw-pagination
        :pageSize="6"
        :items="exampleItems"
        @changePage="onChangePage"
      ></jw-pagination>
    </div>
    </div>

    
  </div>
</template>

<script>
import UserItem from "./components/UserItem";
import axios from "axios";
// let a= document.getElementById("seach").value;
export default {
  name: "list-user",
  components: {
    UserItem,
  },
  data() {
    return {
      searchQuery: null,
      exampleItems: [],
      users: [],
    };
  },
  mounted() {
    axios.get("http://localhost:5050/person").then((response) => {
      this.users = response.data;
      this.exampleItems = this.users;
    });
    // let a= this.users;
  },
  methods: {
    onChangePage(users) {
      // update page of items
      this.users = users;
    },
  },

  //search
  computed: {
    filteredResources() {
      if (this.searchQuery) {
        return this.users.filter((item) => {
          return this.searchQuery
            .toLowerCase()
            .split(" ")
            .every((v) => item.name.toLowerCase().includes(v));
        });
      } else {
        return this.users;
      }
    },
  },
};
</script>

<style scoped>
.pagination {
  display: flex;
  justify-content: center;
}
div.search-container {
  float: right;
}
.search-container input[type="text"] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: 1px solid gray;
}
th {
  text-align: center;
}
</style>
