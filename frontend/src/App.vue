<script setup>
import { ref } from 'vue';

const message = ref('Welcome to Prism! 🚀');
</script>
<template>
    <div class="container bg-white h-screen w-screen">
      <h1 class=" text-black">{{ message }}</h1>
    </div>
  </template>