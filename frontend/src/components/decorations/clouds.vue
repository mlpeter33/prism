<template>
    <div class="absolute bottom-0 w-full h-80 overflow-visible">
      <svg class="w-full h-80" viewBox="0 0 1200 200">
        <defs class="mt-20">
          <radialGradient id="cloudGradient" cx="50%" cy="50%" r="50%">
            <stop offset="0%" stop-color="white" stop-opacity="0.3" />
            <stop offset="100%" stop-color="white" stop-opacity="0.1" />
          </radialGradient>
        </defs>
        
        <circle v-for="cloud in clouds" 
          :key="cloud.id"
          :cx="cloud.x"
          :cy="cloud.y"
          :r="cloud.size"
          fill="url(#cloudGradient)"
          class="animate-cloud-move"
        />
      </svg>
    </div>
  </template>
  
  <script setup>
  import { ref, onMounted } from 'vue';
  
  const clouds = ref([]);
  
  onMounted(() => {
    for (let i = 0; i < 15; i++) {
      clouds.value.push({
        id: i,
        x: Math.random() * 2000,
        y: Math.random() * 80 + 50,
        size: Math.random() * 100 + 40,
      });
    }
  });
  </script>
  
  <style>
  @keyframes cloud-move {
    0% { transform: translateX(-15%); }
    100% { transform: translateX(15%); }
  }
  
  .animate-cloud-move {
    animation: cloud-move 10s ease-in-out infinite alternate;
  }
  </style>
  