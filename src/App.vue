<template>
  <div id="app">
    <NavBarMain/>

  </div>
</template>

<script>
import NavBarMain from './components/NavBarMain.vue'

export default {
  name: 'app',
  components: {
    NavBarMain
  },
  mounted: function(){
  }

}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

@media only screen and (max-width: 992px) and (min-width: 850px) {

    .modal-dialog {
      max-width: 800px; 
    }

}

</style>
