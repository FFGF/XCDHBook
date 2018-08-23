<template lang='pug'>
.swiper
    swiper(
        autoplay='true'
        indicator-dots='true'
        indicator-color='#EA5A49'
        interval='6000'
        duration='1000'
        circular='true'
    )
        div(:key="imgindex" v-for="(top, imgindex) in imgUrls")
            swiper-item
                img(
                    @click="bookDetail(img)"
                    :src="img.image" 
                    :key="img.id" 
                    mode='aspectFit' 
                    class="slide-image" 
                    v-for="img in top"
                )

</template>

<script type='text/ecmascript-6'>
export default{
  props: ['tops'],
  computed: {
    imgUrls () {
      let res = this.tops
      return [res.slice(0, 3), res.slice(3, 6), res.slice(6)]
    }
  },
  methods: {
    bookDetail (img) {
      wx.navigateTo({
        url: '/pages/detail/main?id=' + img.id
      })
    }
  }
}
</script>
<style lang='stylus' rel='stylesheet/stylus'>
.swiper
    margin-top 5px
    .slide-image
        width 33%
        height 250rpx
</style>
