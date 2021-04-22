<template>
  <div class="about">
    <h1>This is an about page</h1>
     <Compteur />
  </div>
</template>

<script>
// @ is an alias to /src
import Compteur from '@/components/Compteur.vue'
export default {
  name: 'About',
  components: {
    Compteur
  }
}
</script>