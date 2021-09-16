<template>
  <div>
    <intro-property-single />
    <!-- End Intro Single-->

    <!-- ======= Property Single ======= -->
    <section class="property-single nav-arrow-b">
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <property-carousel />

            <div class="row justify-content-between">
              <summary-left/>
              <summary-right/>
            </div>
          </div>

        
          <contact-property />
        </div>
      </div>
    </section>
    <!-- End Property Single-->
    <navbar-footer />
  </div>
</template>
<script>
import IntroPropertySingle from "../body/IntroPropertySingle";
import PropertyCarousel from "../body/PropertyCarousel";
import SummaryLeft from "../body/SummarryLeft";
import SummaryRight from "../body/SummaryRight";
import ContactProperty from "../body/ContactProperty";
import NavbarFooter from "./NavbarFooter";


export default {
  name: "house-detail",
  components: {
    IntroPropertySingle,
    PropertyCarousel,
    SummaryLeft,
    SummaryRight,
    ContactProperty,
    NavbarFooter,
  },

 
};
</script>
<style scoped>
</style>