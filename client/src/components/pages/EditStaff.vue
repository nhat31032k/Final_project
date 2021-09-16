<template>
    <div class="container" style="margin-top: -9rem !important; text-align: center">
        <sidebar/>
        <edit-staff/>
    </div>
</template>
<script>
import Sidebar from '../header/Sidebar'
import EditStaff from '../body/EditStaff'
export default {
    name: 'edit-staff-page',
    components: {
        Sidebar,
        EditStaff
    }
}
</script>
<style>
    
</style>