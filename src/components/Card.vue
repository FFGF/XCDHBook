<!-- 图书卡片展示 -->
<template lang='pug'>
a(:href="detailUrl")
    .book-card
        .thumb(@click.stop='preview')
            img(:src='book.image', class='image', mode="aspectFit")
        .detail
            .row(class="text-primary")
                .right {{book.rate}}
                    Rate(:value='book.rate')
                .left {{book.title}}
            .row
                .right(class="text-primary") 浏览量:{{book.count}}
                .left {{book.author}}
            .row
                .right {{book.user_info.nickName}}
                .left {{book.publisher}}              
</template>

<script type='text/ecmascript-6'>
import Rate from '@/components/Rate'
export default {
  props: ['book'],
  components: {
    Rate
  },
  computed: {
    detailUrl () {
      return '/pages/detail/main?id=' + this.book.id
    }
  },
  methods: {
    preview () {
      wx.previewImage({
        current: this.book.image,
        urls: [this.book.image]
      })
    }
  }
}
</script>
<style lang='stylus' rel='stylesheet/stylus'>
.book-card 
    padding 5px
    overflow hidden
    margin-top 5px
    margin-bottom 5px
    font-size 14px
    .thumb
        width 90px
        height 90px
        float left
        margin 0 auto
        overflow hidden
        .image
            max-width 100%
            max-height 100%
    .detail
        margin-left 100px
        .row
            line-height 20px
            margin-bottom 3px
            .right
                float right
            .left
                margin-right 80px    

</style>