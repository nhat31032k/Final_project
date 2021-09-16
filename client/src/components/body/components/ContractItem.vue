<template>
  <tr class="candidates-list">
    <td style="font-weight: bold;">{{ item.id }}</td>
    <td class="title">
      <div class="thumb">
        <img class="img-fluid" :src="item.avt" alt="" />
      </div>
      <div class="candidate-list-details">
        <div class="candidate-list-info">
          <div class="candidate-list-title">
            <h5 class="mb-0">
              <router-link tag="a"  :to="`/contract-detail/${item.id}`" >{{ item.name }}</router-link>

            </h5>
          </div>
          <div class="candidate-list-option">
            <ul class="list-unstyled">
              <li>
                <i class="fas fa-home pr-1"></i>No.Room: {{ item.username }}
              </li>
              <li>
                <i class="fas fa-calendar pr-1"></i>Date create: {{ new Date(item.date_created).toLocaleDateString() }}
              </li>
            </ul>
          </div>
        </div>
      </div>
    </td>
    <td>
      <ul class="list-unstyled mb-0 d-flex justify-content-end">
        <li>
          <router-link
            :to="`/contract-detail/${item.id}`"
            class="text-primary"
            data-toggle="tooltip"
            title="View"
            data-original-title="view"
            ><i class="far fa-eye"></i
          ></router-link>
        </li>
        <li>
          <router-link
            :to="`/edit-contract/${item.id}`"
            class="text-info"
            data-toggle="tooltip"
            title="Edit"
            data-original-title="Edit"
            ><i class="fas fa-pencil-alt"></i
          ></router-link>
        </li>
        <li class="text-danger"
            data-toggle="tooltip"
            title="Delete"
            style="cursor: pointer;"
            data-original-title="Delete"
            @click="deleteContract"
            ><i class="far fa-trash-alt"></i>
          
            
           
          
        </li>
      </ul>
    </td>
  </tr>
</template>
<script>
import axios from 'axios'
export default {
  props: {
    item: {
      type: Object,
    },
  },
  methods: {
    deleteContract() {
      if (confirm(`Ban co chac muon xoa hop dong ${this.item.username } !`) ){
        axios.delete(`http://localhost:5050/person/delete/contract/${this.item.id}`)
          .then(() => {
            setTimeout(function () {
              alert(`Xóa thành công hợp đồng !`);
              location.reload();
            }, 1000);
          })
      }
    }
  },
};
</script>
<style>
/* Candidate List */
.candidate-list {
  background: #ffffff;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  border-bottom: 1px solid #eeeeee;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  padding: 20px;
  -webkit-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}
.candidate-list:hover {
  -webkit-box-shadow: 0px 0px 34px 4px rgba(33, 37, 41, 0.06);
  box-shadow: 0px 0px 34px 4px rgba(33, 37, 41, 0.06);
  position: relative;
  z-index: 99;
}

.candidate-list-title {
  margin-bottom: 5px;
}

.candidate-list-details ul {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-bottom: 0px;
}
.candidate-list-details ul li {
  margin: 5px 10px 5px 0px;
  font-size: 13px;
}

.candidate-list .candidate-list-favourite-time {
  margin-left: auto;
  text-align: center;
  font-size: 13px;
  -webkit-box-flex: 0;
  -ms-flex: 0 0 90px;
  flex: 0 0 90px;
}
.candidate-list .candidate-list-favourite-time span {
  display: block;
  margin: 0 auto;
}
.candidate-list .candidate-list-favourite-time .candidate-list-favourite {
  display: inline-block;
  position: relative;
  height: 40px;
  width: 40px;
  line-height: 40px;
  border: 1px solid #eeeeee;
  border-radius: 100%;
  text-align: center;
  -webkit-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
  margin-bottom: 20px;
  font-size: 16px;
  color: #646f79;
}
.candidate-list .candidate-list-favourite-time .candidate-list-favourite:hover {
  background: #ffffff;
  color: #e74c3c;
}

.candidate-banner .candidate-list:hover {
  position: inherit;
  -webkit-box-shadow: inherit;
  box-shadow: inherit;
  z-index: inherit;
}

.bg-white {
  background-color: #ffffff !important;
}
.p-4 {
  padding: 1.5rem !important;
}
.mb-0,
.my-0 {
  margin-bottom: 0 !important;
}
.shadow-sm {
  box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075) !important;
}

.user-dashboard-info-box .candidates-list .thumb {
  margin-right: 20px;
}
</style>