<template>
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="main-box clearfix">
          <div class="table-responsive">
            <table class="table user-list">
              <thead>
                <tr>
                  <th style="width: 5%"><span>#</span></th>
                  <th><span>No.Room</span></th>
                  <th><span>Date</span></th>
                  <th><span>Status</span></th>
                  <th><span>Action</span></th>
                </tr>
              </thead>
              <tbody v-if="services">
                <ListServiceItem
                    v-for="service in services"
                    :key="service.id"
                    :data="service"
                />
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import ListServiceItem from './components/ListServiceItem'
import axios from 'axios'
export default {
    data() {
        return {
            services : null
        }
    },
    components: {
        ListServiceItem
    },
    mounted() {
        axios.get('http://localhost:5050/service')
            .then ((res) => {
                this.services = res.data
            })
    },
};
</script>
<style scoped>
/* TABLES */
.table {
  border-collapse: separate;
}
.table tr td,
.table tr th {
  text-align: center;
}
.table thead > tr > th {
  border-bottom: 1px solid #c2c2c2;
  padding-bottom: 0;
}
.table tbody > tr > td {
  font-size: 0.875em;
  background: #f5f5f5;
  border-top: 10px solid #fff;
  vertical-align: middle;
  padding: 12px 8px;
}
.table tbody > tr > td:first-child,
.table thead > tr > th:first-child {
  padding-left: 20px;
}
.table thead > tr > th span {
  border-bottom: 2px solid #c2c2c2;
  display: inline-block;
  padding: 0 5px;
  padding-bottom: 5px;
  font-weight: normal;
}
.table thead > tr > th > a span {
  color: #344644;
}

</style>