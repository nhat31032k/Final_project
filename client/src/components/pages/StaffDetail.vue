<template>
    <div class="container" style="margin-top: -9rem !important; text-align: center">
        <sidebar/>
        <h1>Staff detail page</h1>
        <staff-detail/>
    </div>
</template>
<script>
import Sidebar from "../header/Sidebar";
import StaffDetail from '../body/StaffDetail'
export default {
    name: 'staff-detail-page',
    components: {
        Sidebar,
        StaffDetail
    }
}
</script>
<style>
    
</style>