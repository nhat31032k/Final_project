<template>
    <div class="container">
        <sidebar/>
        <h1 style="text-align: center">List user</h1>
        <list-user/>
        <router-view></router-view>
    </div>
</template>

<script>
import ListUser from '../body/ListUser'
import Sidebar from "../header/Sidebar";

export default {
    name: 'user',
    components: {
        ListUser,
        Sidebar
    }
}
</script>

<style scoped>
    .container{
        margin-top: -9rem !important;
        margin-bottom: 100px;
    }
</style>