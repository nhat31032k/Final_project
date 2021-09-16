<template>
    <div>
        <div class="container">
            <ListService/>
        </div>
        
        <navbar-footer />
        
    </div>
</template>
<script>
import NavbarFooter from "./NavbarFooter";
import ListService from '../body/ListService'
export default {
    components: {
        NavbarFooter,
        ListService
    }
};
</script>
<style>
</style>