<template>
  <li class="nav-item">
    <router-link 
        class="nav-link" 
        active-class="active" 
        exact
        :to=" item.to "
        
      >{{ item.title }}</router-link
    >
  </li>
</template>

<script>
export default {
    name: 'navbar-item',
    props: {
        item:{
            type: Object
        }
    }
};
</script>

<style scoped>
h1,
h2,
h3,
h4,
h5,
h6 {
  color: #000000;
}

a {
  color: #000000;
  transition: all 0.5s ease;
}

a:hover {
  color: #2eca6a;
  text-decoration: none;
}

.link-two {
  color: #000000;
  transition: all 0.5s ease;
}

.link-two:hover {
  text-decoration: underline;
  color: #000000;
}

.link-one {
  color: #000000;
  transition: all 0.5s ease;
}

.link-one:hover {
  color: #000000;
  text-decoration: none;
}

.link-icon {
  color: #000000;
  font-weight: 500;
}

.link-icon span {
  font-size: 14px;
  padding-left: 4px;
  vertical-align: middle;
}

.link-a {
  color: #ffffff;
  text-decoration: none;
}

@media (min-width: 768px) {
  .link-a {
    font-size: 0.9rem;
  }
}

@media (min-width: 992px) {
  .link-a {
    font-size: 1rem;
  }
}

.link-a:hover {
  color: #ffffff;
  text-decoration: none;
}

.link-a span {
  font-size: 18px;
  vertical-align: middle;
  margin-left: 5px;
}

@media (min-width: 768px) {
  .link-a span {
    font-size: 1.5rem;
  }
}

@media (min-width: 992px) {
  .link-a span {
    font-size: 18px;
  }
}

.text-brand {
  color: #000000;
  font-size: 2rem;
  font-weight: 600;
}

@media (max-width: 767px) {
  .text-brand {
    font-size: 1.8rem;
  }
}

.color-a {
  color: #000000;
}

.color-b {
  color: #2eca6a;
}

.color-d {
  color: #adadad;
}

.color-text-a {
  color: #555555;
}

.no-margin {
  margin: 0;
}
.navbar-default.navbar-trans .nav-item,
.navbar-default.navbar-reduce .nav-item {
  position: relative;
  padding-right: 10px;
  padding-bottom: 8px;
  margin-left: 0;
}

@media (min-width: 768px) {
  .navbar-default.navbar-trans .nav-item,
  .navbar-default.navbar-reduce .nav-item {
    margin-left: 15px;
  }
}

.navbar-default.navbar-trans .nav-link,
.navbar-default.navbar-reduce .nav-link {
  font-size: 1.1rem;
  color: #000000;
  font-weight: 600;
  letter-spacing: 0.03em;
  transition: all 0.1s ease-in-out;
  position: relative;
  padding-left: 0;
  padding-right: 0;
}

.navbar-default.navbar-trans .nav-link:before,
.navbar-default.navbar-reduce .nav-link:before {
  content: "";
  position: absolute;
  bottom: 5px;
  left: 0;
  width: 100%;
  height: 2px;
  z-index: 0;
  background-color: #2eca6a;
  transform: scaleX(0);
  transform-origin: right;
  transition: transform 0.2s ease-out, opacity 0.2s ease-out 0.3s;
}

.navbar-default.navbar-trans .nav-link:hover,
.navbar-default.navbar-reduce .nav-link:hover {
  color: #000000;
}

.navbar-default.navbar-trans .nav-link:hover:before,
.navbar-default.navbar-reduce .nav-link:hover:before {
  transform: scaleX(1);
  transform-origin: left;
}

.navbar-default.navbar-trans .show > .nav-link:before,
.navbar-default.navbar-trans .active > .nav-link:before,
.navbar-default.navbar-trans .nav-link.show:before,
.navbar-default.navbar-trans .nav-link.active:before,
.navbar-default.navbar-reduce .show > .nav-link:before,
.navbar-default.navbar-reduce .active > .nav-link:before,
.navbar-default.navbar-reduce .nav-link.show:before,
.navbar-default.navbar-reduce .nav-link.active:before {
  transform: scaleX(1);
}

.navbar-default.navbar-trans .nav-link:before {
  background-color: #2eca6a;
}

.navbar-default.navbar-trans .nav-link:hover {
  color: #000000;
}

.navbar-default.navbar-trans .show > .nav-link,
.navbar-default.navbar-trans .active > .nav-link,
.navbar-default.navbar-trans .nav-link.show,
.navbar-default.navbar-trans .nav-link.active {
  color: #000000;
}

.navbar-default.navbar-reduce {
  transition: all 0.5s ease-in-out;
  padding-top: 19px;
  padding-bottom: 19px;
}

.navbar-default.navbar-reduce .nav-link {
  color: #000000;
}

.navbar-default.navbar-reduce .nav-link:before {
  background-color: #2eca6a;
}

.navbar-default.navbar-reduce .nav-link:hover {
  color: #000000;
}

.navbar-default.navbar-reduce .show > .nav-link,
.navbar-default.navbar-reduce .active > .nav-link,
.navbar-default.navbar-reduce .nav-link.show,
.navbar-default.navbar-reduce .nav-link.active {
  color: #000000;
}

</style>
