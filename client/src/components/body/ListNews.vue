<template>
  <div class="row container">
    <div class="col-lg-10 mx-auto">

      <!-- Timeline -->
      <button
        class="btn btn-success"
        @click="$router.push('/add-news')"
        v-if="$store.state.role === 2"
      >
        Add News
      </button>
      <ul class="timeline">
        <news-item v-for="news in listNews" :key="news.id" :news="news" />
      </ul>
      <!-- End -->
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
import NewsItem from "./components/NewsItem";
import axios from "axios";
export default {
  name: "listnews",
  data() {
    return {
      listNews: [],
      exampleItems: [],
    };
  },
  components: {
    NewsItem,
  },
  mounted() {
    axios.get("http://localhost:5050/news/").then((response) => {
      this.listNews = response.data;
      this.exampleItems = this.listNews;
    });
  },
  methods: {
    onChangePage(listNews) {
      // update page of items
      this.listNews = listNews;
    },
  },
};
</script>

<style scoped>
/*
*
* ==========================================
* CUSTOM UTIL CLASSES
* ==========================================
*
*/

/* Timeline holder */
ul.timeline {
  list-style-type: none;
  position: relative;
  padding-left: 1.5rem;
}

/* Timeline vertical line */
ul.timeline:before {
  content: " ";
  background: rgb(0, 158, 111);
  display: inline-block;
  position: absolute;
  left: 16px;
  width: 4px;
  height: 100%;
  z-index: 400;
  border-radius: 1rem;
}
div.pagination {
  display: flex;
  justify-content: center;
  width: 100%;
}
</style>
