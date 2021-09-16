<template>
    <div class="container mt-3 mb-4"  style="margin-top: -9rem !important; text-align: center; margin-bottom: 100px;">
        <h1>Contract Edit</h1>
        <sidebar />
        <ContractEdit/>
    </div>
</template>
<script>
import Sidebar from "../header/Sidebar";
import ContractEdit from '../body/ContractEdit'
export default {
    components: {
    Sidebar,
    ContractEdit
  },
}
</script>
<style>
    
</style>