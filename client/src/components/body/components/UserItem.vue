<template>
  <tr>
    <th scope="row">{{ user.ID }}</th>
    <td>{{ user.username }}</td>
    <td>{{ user.name }}</td>
    <td>
      <!-- Call to action buttons -->
      <ul class="list-inline m-0">
        <li class="list-inline-item">
          <button
            class="btn btn-primary btn-sm rounded-0"
            type="button"
            data-toggle="tooltip"
            data-placement="top"
            title="Edit"
            @click="$router.push(`/edit-member/${user.ID}`)"
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
            @click="deleteUser"
          >
            <i class="fa fa-trash"></i>
          </button>
        </li>
      </ul>
    </td>
  </tr>
</template>

<script>
import axios from "axios";
export default {
  name: "user-item",
  props: {
    user: {
      type: Object,
    },
  },
  methods: {
    deleteUser() {
      if (confirm(`Ban co chac muon xoa user ${this.user.username} !`)) {
        axios
          .delete(`http://localhost:5050/person/delete/${this.user.ID}`)
          .then(() => {
            setTimeout(function () {
              alert(`Xóa thành công user !`);
              location.reload();
            }, 1000);
          });
      }
    },
  },
};
</script>

<style scoped>
td,
th {
  text-align: center;
}
</style>
