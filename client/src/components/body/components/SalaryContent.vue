<template>
  <div class="invoice-content">
    <!-- begin table-responsive -->
    <div class="table-responsive">
      <table class="table table-invoice">
        <thead>
          <tr>
            <th>#</th>
            <th>TASK DESCRIPTION</th>
            <th class="text-right" width="20%">LINE TOTAL</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>
              <span class="text-inverse">Luong co ban</span
              ><br />
              
            </td>
           
            <td class="text-right">{{ new Intl.NumberFormat().format( data.luongcoban) }} VND</td>
          </tr>
          <tr>
            <td>2</td>
            <td>
              <span class="text-inverse">Phu cap</span><br />
              
            </td>
            
            <td class="text-right">{{ new Intl.NumberFormat().format(data.phucap) }} VND</td>
          </tr>
          <tr>
            <td>3</td>
            <td>
              <span class="text-inverse">Thuong</span><br />
             
            </td>
            
            <td class="text-right">{{ new Intl.NumberFormat().format(data.thuong) }} VND</td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- end table-responsive -->

    <!-- begin price -->
    <div class="invoice-price">
      
      <div class="invoice-price-right">
         <span class="f-w-600"><strong>TOTAL: </strong> {{ new Intl.NumberFormat().format(data.thuong + data.luongcoban + data.phucap) }} VND</span>
      </div>
    </div>
    <!-- end price -->
  </div>
</template>
<script>
export default {
  props: {
    data: {
      type: Object
    }
  },
  
};
</script>
<style scoped>

.invoice-price {
    background: #f0f3f4;
    display: table;
    width: 100%
}

.invoice-price .invoice-price-left,
.invoice-price .invoice-price-right {
    display: table-cell;
    padding: 20px;
    font-size: 20px;
    font-weight: 600;
    width: 75%;
    position: relative;
    vertical-align: middle
}

.invoice-price .invoice-price-left .sub-price {
    display: table-cell;
    vertical-align: middle;
    padding: 0 20px
}

.invoice-price small {
    font-size: 12px;
    font-weight: 400;
    display: block
}

.invoice-price .invoice-price-row {
    display: table;
    float: left
}

.invoice-price .invoice-price-right {
    width: 25%;
    background: #2d353c;
    color: #fff;
    font-size: 28px;
    text-align: right;
    vertical-align: bottom;
    font-weight: 300
}

.invoice-price .invoice-price-right small {
    display: block;
    opacity: .6;
    position: absolute;
    top: 10px;
    left: 10px;
    font-size: 12px
}

.invoice-footer {
    border-top: 1px solid #ddd;
    padding-top: 10px;
    font-size: 10px
}

.invoice-note {
    color: #999;
    margin-top: 80px;
    font-size: 85%
}

.invoice>div:not(.invoice-footer) {
    margin-bottom: 20px
}

.btn.btn-white, .btn.btn-white.disabled, .btn.btn-white.disabled:focus, .btn.btn-white.disabled:hover, .btn.btn-white[disabled], .btn.btn-white[disabled]:focus, .btn.btn-white[disabled]:hover {
    color: #2d353c;
    background: #fff;
    border-color: #d9dfe3;
}
</style>