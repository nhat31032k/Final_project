<template>
    <div>
        <div class="container">
            <profile/>
        </div>
        
        <navbar-footer />
    </div>
</template>

<script>
import NavbarFooter from "./NavbarFooter";
import Profile from '../body/Profile'
export default {
    name: 'profile-page',
    components: {
    NavbarFooter,
    Profile
  },
}
</script>

<style scoped>

</style>