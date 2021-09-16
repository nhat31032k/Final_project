<template>
    <div class="container mt-3 mb-4"  style="margin-top: -9rem !important; text-align: center; margin-bottom: 100px;">
        <h1>Contract Detail</h1>
        <ContractDetail/>
        <sidebar />
    </div>
</template>
<script>
import Sidebar from "../header/Sidebar";
import ContractDetail from '../body/ContractDetail';
export default {
    
    components: {
    Sidebar,
    ContractDetail
  },
}
</script>
<style>
    
</style>