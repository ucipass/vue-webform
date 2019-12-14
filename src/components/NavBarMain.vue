<template>
     <b-container fluid class='p-0'>
        <b-row class="mb-1">
          <b-col xl='3' lg='3' md='3'>
            field1&nbsp;
          </b-col>
          <b-col>
            <b-input v-model='field1' @change='testfn()'></b-input>
          </b-col>
        </b-row>
     </b-container>


</template>

<script>

export default {
  name: 'MainGetPage',
  components: {
  //  ModalLogin
  },
  props: {
    title: {
      default: "MainGetPage",
      type: String
    },
    id: {
      default: "MainGetPage",
      type: String
    }
  },
  data: function(){
    return{
      field1: "field1"
    }
  },
  methods:{
    testfn: async function(){
      console.log("TEST")
    }
  },
  computed:{
    getjson(){
      return{ prefix:this.prefix,region:this.region}
    }
  },
  mounted: async function () {

  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
