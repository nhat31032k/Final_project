<template>
     <div class="col-md-8">
          <div class="card mb-3">
            <div class="card-body">
              <div class="row">
                <div class="col-sm-3">
                  <h6 class="mb-0">Full Name</h6>
                </div>
                <div class="col-sm-9 text-secondary">{{ data[0].name }}</div>
              </div>
              <hr />
              <div class="row">
                <div class="col-sm-3">
                  <h6 class="mb-0">Email</h6>
                </div>
                <div class="col-sm-9 text-secondary">{{ data[0].email }}</div>
              </div>
              
              <hr />
              <div class="row">
                <div class="col-sm-3">
                  <h6 class="mb-0">Mobile</h6>
                </div>
                <div class="col-sm-9 text-secondary">{{ data[0].phone_number  }}</div>
              </div>
              <hr />
              <div class="row">
                <div class="col-sm-3">
                  <h6 class="mb-0">Address</h6>
                </div>
                <div class="col-sm-9 text-secondary">
                  {{ data[0].address  }}
                </div>
              </div>
              <hr />
              <div class="row">
                <div class="col-sm-3">
                  <h6 class="mb-0">Birthday</h6>
                </div>
                <div class="col-sm-9 text-secondary">
                  {{ new Date(data[0].birthday).toLocaleDateString()  }}
                </div>
              </div>
             
            </div>
          </div>
          
        </div>
</template>
<script>
export default {
    name: 'staff-detail-component',
    props: {
        data: {
            type: Array
        }
    },

}
</script>
<style>
    
</style>