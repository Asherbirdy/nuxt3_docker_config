<script setup lang="ts">
  const config = useRuntimeConfig()

</script>

<template>
  <div>
    <div>
      ENV_TEXT:{{ config.public.text }}
    </div>
    <NuxtRouteAnnouncer />
    <NuxtWelcome />
  </div>
</template>
