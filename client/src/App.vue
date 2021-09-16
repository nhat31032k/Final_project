<template>
  <div id="app">
    <transition name="scale" mode="out-in">
      <router-view />
    </transition>
  </div>
</template>

<script>

export default {
  name: "App",
  data() {
    return {};
  },
  // mounted() {
  //   axios
  //     .get("http://localhost:4040/api/test")
  //     .then((response) => (this.info = response.data));
  // },
};
</script>

<style>
#app {
  color: #2c3e50;
  margin-top: 10rem !important;
    /* width:100%;
    height:100%; */
}

scale-enter-active,
.scale-leave-active {
  transition: all 0.4s ease;
}


.scale-enter-from,
.scale-leave-to {
  opacity: 0;
  transform: scale(0.9);
}

</style>
