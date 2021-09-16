<template>
  <tr>
    <th scope="row">{{ staff.id }}</th>
    <td>{{ staff.name }}</td>
    <td>{{ new Date(staff.birthday).toLocaleDateString() }}</td>
    <td>{{ staff.position }}</td>
    <td>
      <!-- Call to action buttons -->
      <ul class="list-inline m-0">
        <li class="list-inline-item">
          <button
            class="btn btn-primary btn-sm rounded-0"
            type="button"
            data-toggle="tooltip"
            data-placement="top"
            title="View Detail"
            @click="$router.push(`/staff-detail/${staff.id}`)"
          >
            <i class="fa fa-eye"></i>
          </button>
        </li>
        <li class="list-inline-item">
          <button
            class="btn btn-success btn-sm rounded-0"
            type="button"
            data-toggle="tooltip"
            data-placement="top"
            @click="$router.push(`/edit-staff/${staff.id}`)"
            title="Edit"
          >
            <i class="fa fa-edit"></i>
          </button>
        </li>
        <li class="list-inline-item">
          <button
            class="btn btn-danger btn-sm rounded-0"
            type="button"
            data-toggle="tooltip"
            data-placement="top"
            title="Delete"
            @click="deleteStaff"
          >
            <i class="fa fa-trash"></i>
          </button>
        </li>
      </ul>
    </td>
  </tr>
</template>

<script>
import axios from 'axios'
export default {
  name: "staff-item",
  props: {
    staff: {
      type: Object,
    },
  },
  methods: {
    deleteStaff(){
      if ( confirm(`Bạn có muốn xóa nhân viên ${this.staff.name}`) ){
        axios
        .delete(`http://localhost:5050/staff/delete/${this.staff.id}`)
        .then(() => {
          setTimeout(function () {
              alert(`Xóa thành công nhân viên !`);
              location.reload();
            }, 1000);
        })
      }
      
    }
  },
};
</script>


<style scoped>
  th, td{
    text-align: center;
  }
</style>
