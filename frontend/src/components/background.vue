<script setup>
import clouds from './decorations/clouds.vue';
</script>

<template>
    <div class="relative h-full w-full bg-slate-950">
      <div class="absolute h-full w-full mt-10 bg-gradient-to-t from-amber-200 to-slate-950 justify-center flex">   
      <slot></slot>
      <clouds />
      </div>
    </div>
</template>