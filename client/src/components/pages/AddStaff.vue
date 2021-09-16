<template>
    <div>
        <sidebar/>
        <div class="container">
            <AddStaff/>
        </div>
        
    </div>
</template>

<script>
import Sidebar from "../header/Sidebar";
import AddStaff from '../body/AddStaff'
export default {
    components: {
        Sidebar,
        AddStaff
    }
}
</script>
<style>
    
</style>