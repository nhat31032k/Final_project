<template>
  <li class="timeline-item bg-white rounded ml-3 p-4 shadow">
    <div class="timeline-arrow"></div>
    <h2 class="h5 mb-0">{{ news.title }}</h2>

    <span class="small text-gray"
      ><i class="fa fa-clock-o mr-1"></i
      >{{ new Date(news.date_post).toLocaleDateString() }}</span
    >
    <p class="text-small mt-2 font-weight-light">
      {{ news.content }}
    </p>
    <div class="card-body">
      <p class="card-text nguoi_dang">
        Người đăng: <span>{{ news.author }}</span>
      </p>
      <button
        v-if="role === 2"
        class="btn btn-danger btn-sm rounded-0"
        type="button"
        data-toggle="tooltip"
        data-placement="top"
        title="Delete"
        @click="deleteNews"
      >
        <i class="fa fa-trash"></i>
      </button>
    </div>
  </li>
</template>

<script>
import axios from "axios";
export default {
  name: "news-item",
  props: {
    news: {
      type: Object,
    },
  },
  data() {
    return {
      role: JSON.parse(localStorage.getItem("user")).role,
    };
  },
  methods: {
    deleteNews() {
      if (
        confirm(`Ban chac rang muon xoa bang tin '${this.news.title}' khong ?`)
      ) {
        axios
          .delete(`http://localhost:5050/news/delete/${this.news.id}`)
          .then(() => {
            setTimeout(function () {
              alert(`Đã xóa thành công bảng tin`);
              location.reload();
            }, 2000);

           
          });
      }
    },
  },
};
</script>

<style scoped>
li.timeline-item {
  margin: 20px 0;
}

/* Timeline item arrow */
.timeline-arrow {
  border-top: 0.5rem solid transparent;
  border-right: 0.5rem solid rgb(83, 83, 83);
  border-bottom: 0.5rem solid transparent;
  display: block;
  position: absolute;
  left: 2rem;
}

/* Timeline item circle marker */
li.timeline-item::before {
  content: " ";
  background: rgb(182, 17, 17);
  display: inline-block;
  position: absolute;
  border-radius: 50%;
  border: 3px solid #fff;
  left: 11px;
  width: 14px;
  height: 14px;
  z-index: 400;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
}

/*
*
* ==========================================
* FOR DEMO PURPOSES
* ==========================================
*
*/
body {
  background: #e8cbc0;
  background: -webkit-linear-gradient(to right, #e8cbc0, #636fa4);
  background: linear-gradient(to right, #e8cbc0, #636fa4);
  min-height: 100vh;
}

.text-gray {
  color: #999;
}
.nguoi_dang {
  float: right;
  text-align: right;
  color: rgb(105, 105, 105);
}
</style>
