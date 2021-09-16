<template>
    <div class="col-md-4 mb-3">
          <div class="card">
            <div class="card-body">
              <div class="d-flex flex-column align-items-center text-center">
                <img
                  :src="data[0].avt"
                  alt="Admin"
                  class="rounded-circle"
                  width="150"
                />
                <div class="mt-3">
                  <h4>{{ data[0].username }}</h4>
                                   
                  <button class="btn btn-outline-primary" @click="$router.push(`/edit-contract/${data[0].id}`)">Edit</button>
                </div>
              </div>
            </div>
          </div>
         
        </div>
</template>
<script>
export default {
    name: 'staff-info',
    props: {
        data: {
            type: Array
        }
    }
}
</script>
<style>
    
</style>