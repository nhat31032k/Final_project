<template>
  <li class="d-flex justify-content-between">
    <strong>{{ item.title }}:</strong>
    <span>{{ item.value }}</span>
  </li>
</template>

<script>
export default {
  name: "summarry-left-item",
  props:{
      item: {
          type: Object
      }
  }
};
</script>

<style scoped>
li{
    margin: 10px auto;
}
</style>
