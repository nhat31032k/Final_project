<template>
    <div>
        <div class="container">
            <Salary/>
        </div>
        
        <navbar-footer />
    </div>
</template>

<script>
import NavbarFooter from "./NavbarFooter";
import Salary from '../body/Salary'
export default {
    components: {
    NavbarFooter,
    Salary
  },
}
</script>

<style scoped>

</style>