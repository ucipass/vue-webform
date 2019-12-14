<template>
  <div>
    <b-navbar toggleable="sm" type="dark" variant="dark">
      <b-navbar-brand v-if='false' href="#">Home</b-navbar-brand>

      <b-navbar-toggle target="nav-collapse" ></b-navbar-toggle>

      <b-collapse size='lg' id="nav-collapse" is-nav>
        <b-navbar-nav>
          <b-dropdown left variant="outline-primary" v-if="loggedIn" text='Menu'>
          </b-dropdown>
        </b-navbar-nav>
        <b-navbar-nav class="ml-auto">
          <b-button variant='outline-primary'         v-if='!loggedIn' @click="showLoginWindow()">Login</b-button>
          <b-button variant='outline-success' v-if='loggedIn' @click="logout()">Logout</b-button>
        </b-navbar-nav>
      </b-collapse>
    </b-navbar>

    <ModalLogin id='loginModal'></ModalLogin>


  </div>
</template>

<script>
import ModalLogin from './ModalLogin.vue'

export default {
  name: 'NavBarMain',
  components: {
   ModalLogin
  },
  props: {
    title: {
      default: "Login",
      type: String
    },
    id: {
      default: "NavBarMain",
      type: String
    }
  },
  data: function(){
    return{
      loggedIn: false
    }
  },
  methods:{
    testfn: async function(){
      console.log("TEST")
    },
    showLoginWindow(){
      this.$root.$emit('showLoginWindow')
    },
    showTestWindow: function(){
      this.$root.$emit('showTestWindow')
    },
    logout: function(){
      this.$root.$emit('logoutEvent')
      console.log("Logout Event")
    }
  },
  computed:{
    getjson(){
      return{ prefix:this.prefix,region:this.region}
    }
  },
  mounted: async function () {
    this.$root.$on('loginEvent', () => {
        console.log("loginEvent")
        this.loggedIn = true
    })
    this.$root.$on('logoutEvent', () => {
        console.log("logoutEvent")
        this.loggedIn = false
    })




  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
