<template>
    <div>
        <h1> Mon super compteur </h1>
        <p @click="increment">  Vous avez cliqué {{ total }} fois.</p>
        <hr>
        <p>Le total général depuis VueX est de {{totalGeneral}} </p>
        <p>Le double du total est de {{doubleDuTotal}} </p>
    </div>
</template>

<script>
export default {
  name: 'Compteur',
  data(){
    return {
    total: 0
    }
  },
  computed: {
    totalGeneral(){
      return this.$store.state.totalFromVueX ;
    },
    doubleDuTotal(){
      return this.$store.getters.doubleDuTotal ;
    }
  },
  methods: {
    increment(){
      this.total += 1;
      this.$store.commit('setTotalFromVueX', this.totalGeneral += 1)
      }
  }
}
</script>
