<script setup>
import { ref } from 'vue';

const message = ref('Welcome to Prism! 🚀');
</script>
<template>
    <div class="container bg-white min-h-full min-w-full">
      <h1 class=" text-black">{{ message }}</h1>
    </div>
  </template>
  <style>
  html, body, #app {
    height: 100%;
    width: 100%;
    margin: 0;
    padding: 0;
    overflow: hidden;
    }
  </style>