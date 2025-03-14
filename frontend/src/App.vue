<script setup>
import background from './components/background.vue';
import { ref } from 'vue';

const message = ref('Welcome to Prism! 🚀');
</script>

<template>
    <div id="app">
       <background><p class="absolute text-white text-4xl">{{ message }}</p></background>
    </div>
</template>
  
  <style>
body {
  position: relative;
  min-height: 100vh;
  min-width: 100vw;
}

#app {
  position: absolute;
  overflow: hidden;
  min-width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}
  </style>