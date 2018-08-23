<!--  -->
<template lang='pug'>
.bookinfo
    .thumb
        img(
            class='back'
            :src="info.image"
            mode="aspectFill"
            )
        img(
            class='img'
            :src="info.image"
            mode="aspectFit")
        .info
            .title {{info.title}}
            .author {{info.author}}
    .detail 
        img(
            class="avatar"
            :src="userinfo.image"
            mode="aspectFit")
        .username {{userinfo.name}}
        .right(class="text-primary") {{info.rate}}分
            Rate(:value='info.rate')
    .detail {{info.publisher}}
        .right {{info.price}}
    .tags
        .badge(v-for='tag in info.tags' :key='tag') {{tag}}
    .summary
        p(v-for='(sum, i) in info.summary' :key="i") {{sum}}

</template>

<script type='text/ecmascript-6'>
import Rate from '@/components/Rate'
export default {
  props: ['info'],
  data () {
    return {
    }
  },
  components: {
    Rate
  },
  computed: {
    userinfo () {
      return this.info.user_info || {}
    }
  },
  mounted () {},
  methods: {}
}
</script>
<style lang='stylus' rel='stylesheet/stylus'>

.bookinfo 
    font-size 14px
    .tags
        .badge
            display inline-block
            margin 5px
            padding 5px
            border-radius 10px
            border 1px #EA5A49 solid
            color #EA5A49
    .summary
        margin-top 10px
        padding 0 15px
        p
            text-indent 2em
            font-size 14px

    .right
        float right
    .detail
        padding 5px 10px 
        .avatar
            width 20px
            height 20px
            border-radius 50%
            vertical-align middle
            margin-right 10px
        .username
            display inline-block
    .thumb
        width 750rpx
        height 500rpx
        overflow hidden
        position relative
        .back
            filter blur(15px)
            width 100%
        .img
            position absolute
            width 100%
            height 300rpx
            left 0
            top 30rpx
        .info
            color white
            position absolute
            width 100%
            left 0
            top 330rpx
            text-align center
            .title
                font-size 20px
            .author
                font-size 14px
</style>