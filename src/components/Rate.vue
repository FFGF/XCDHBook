<!-- 星星 -->
<template lang='pug'>
.rate
    span ☆☆☆☆☆
    .hollow(:style='style') ★★★★★
</template>

<script type='text/ecmascript-6'>
export default {
  props: {
    value: {
      type: [Number, String],
      default: '0'
    }
  },
  computed: {
    style () {
      return `width:${this.value / 2.4}em`
    }
  }
}
</script>
<style lang='stylus' rel='stylesheet/stylus'>
.rate
    position relative
    display inline-block
    .hollow
        position absolute
        display inline-block
        top 0
        left 0
        width 0
        overflow hidden
</style>