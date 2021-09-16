<template>
  <div class="col-lg-12">
    <div class="card border-0 shadow">
      <div class="card-body p-5">
        <!-- Responsive table -->
        <div
          class="search"
          style="display: flex; justify-content: space-between"
        >
          <input
            class="form-control form-control-lg form-control-borderless"
            type="search"
            placeholder="Find User"
            v-model="searchQuery"
            style="width: 70%"
          />
          <button class="btn btn-success" @click="$router.push('add-staff')">
            Add Staff Info
          </button>
        </div>
        <div class="table-responsive">
          <div class="col-12 col-md-10 col-lg-12"></div>
          <table class="table m-0">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Username</th>
                <th scope="col">Birthday</th>
                <th scope="col">Position</th>
              </tr>
            </thead>
            <tbody>
              <staff-item
                v-for="staff in filteredResources"
                :key="staff.id"
                :staff="staff"
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
</template>

<script>
import StaffItem from "./components/StaffItem";
import axios from "axios";
export default {
  name: "list-staff",
  components: {
    StaffItem,
  },
  data() {
    return {
      searchQuery: null,
      exampleItems: [],
      staffs: [],
    };
  },
  mounted() {
    axios.get("http://localhost:5050/staff").then((response) => {
      this.staffs = response.data;
      this.exampleItems = this.staffs;
    });
  },
  methods: {
    onChangePage(staffs) {
      // update page of items
      this.staffs = staffs;
    },
    redirect() {
      console.log("click");
    },
  },
  //search
  computed: {
    filteredResources() {
      if (this.searchQuery) {
        return this.staffs.filter((item) => {
          return this.searchQuery
            .toLowerCase()
            .split(" ")
            .every((v) => item.name.toLowerCase().includes(v));
        });
      } else {
        return this.staffs;
      }
    },
  },
};
</script>

<style scoped>
div.search-container {
  float: right;
}
.search-container input[type="text"] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: 1px solid gray;
}
th,
td {
  text-align: center;
}
</style>
