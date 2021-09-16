<template>
    <div class="container mt-3 mb-4"  style="margin-top: -9rem !important; text-align: center; margin-bottom: 100px;">
        <h1>List Contracts</h1>
        <sidebar />
        <Contract/>
    </div>
</template>

<script>
import Sidebar from "../header/Sidebar";
import Contract from '../body/Contract'
export default {
    components: {
    Sidebar,
    Contract
  },
}
</script>

<style scoped>

</style>