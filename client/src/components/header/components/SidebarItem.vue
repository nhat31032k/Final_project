<template>
  <li class="nav-item">
    <router-link
      class="nav-link text-dark font-italic"
      exact
      :to=" item.to "
      ><i :class="item.icon"></i>{{ item.title }}</router-link
    >
  </li>
</template>

<script>
export default {
    name: 'sidebar-item',
    props:{
        item: {
            type: Object
        }
    }
};
</script>

<style scoped></style>
