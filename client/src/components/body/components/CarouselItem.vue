<template>
  <div :class="['carousel-item', {'active': img.id === 0}]">
    <img
      :src="img.img"
      :alt="img.alt"
      width="1100"
      height="500"
    />
  </div>
</template>

<script>
export default {
  name: "carousel-item",
  props: {
      img: {
          type: Object
      },
      status: {
          type: Boolean
      },
      
  }
};
</script>

<style scoped></style>
