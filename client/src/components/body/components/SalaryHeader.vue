<template>
  
  <div class="invoice-header">
    <div class="invoice-from">
      <small>from</small>
      <address class="m-t-5 m-b-5">
        <strong class="text-inverse">Twitter, Inc.</strong><br />
        Street Address<br />
        City, Zip Code<br />
        Phone: (123) 456-7890<br />
        Fax: (123) 456-7890
      </address>
    </div>
    <div class="invoice-to">
      <small>to</small>
      <address class="m-t-5 m-b-5">
        <strong class="text-inverse">Company Name</strong><br />
        Street Address<br />
        City, Zip Code<br />
        Phone: (123) 456-7890<br />
        Fax: (123) 456-7890
      </address>
    </div>
    <div class="invoice-date">
      <small>Invoice / July period</small>
      <div class="date text-inverse m-t-5">August 3,2012</div>
      <div class="invoice-detail">
        #0000123DSS<br />
        Services Product
      </div>
    </div>
  </div>
 
</template>
<script>
export default {};
</script>
<style>


.invoice-header {
    margin: 0 -20px;
    background: #f0f3f4;
    padding: 20px
}

.invoice-date,
.invoice-from,
.invoice-to {
    display: table-cell;
    width: 1%
}

.invoice-from,
.invoice-to {
    padding-right: 20px
}

.invoice-date .date,
.invoice-from strong,
.invoice-to strong {
    font-size: 16px;
    font-weight: 600
}

.invoice-date {
    text-align: right;
    padding-left: 20px
}
</style>