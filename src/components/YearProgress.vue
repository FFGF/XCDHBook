<!-- 一年过了多少天组件 -->
<template lang='pug'>
    .progressbar
      progress(:percent="percent", activeColor='#EA5A49')
      p {{year}}已经过去了{{days}}天， {{percent}}%
</template>

<script type='text/ecmascript-6'>
export default {
  data () {
    return {
    }
  },
  methods: {
    isLeapYear () {
      const year = new Date().getFullYear()
      if (year % 400 === 0) {
        return true
      } else if (year % 4 === 0 && year % 100 !== 0) {
        return true
      } else {
        return false
      }
    },
    getDayOfYear () {
      return this.isLeapYear() ? 366 : 365
    }
  },
  computed: {
    year () {
      return new Date().getFullYear()
    },
    days () {
      // start 就是今年第一天
      let start = new Date()
      start.setMonth(0)
      start.setDate(1)

      let offset = new Date().getTime() - start.getTime()
      return parseInt(offset / 1000 / 60 / 60 / 24) + 1
    },
    percent () {
      return (this.days * 100 / this.getDayOfYear()).toFixed(1)
    }
  }
}
</script>
<style lang='stylus' rel='stylesheet/stylus'>
.progressbar
  width 100%
  text-align center
  margin-top 10px
  margin-bottom 40px
  progress
    margin-bottom 10px
</style>