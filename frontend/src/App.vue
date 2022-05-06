<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png" v-on:click="greet">
    <HelloWorld msg="Welcome to Your Vue.js App"/>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue';
import axios from "axios";

export default {
  name: 'App',
  components: {
    HelloWorld
  },
  methods: {
    greet: async function() {
      const students = await axios.get("http://localhost:44180/api/students").then(r => r.data);
      console.log(students);
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
