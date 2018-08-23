<!-- 图书评论列表 -->
<template lang='pug'>
.comment-list
    .page-title(v-if='comments.length') 评论
    .comment(v-for='comment in comments' :key='comment.id' @click='handleClick(comment)')
        .user
            .inline
                img(
                    mode='aspectFit'
                    class='avatar'
                    :src='comment.image'
                )
                span {{comment.title}}
            .right 
                span {{comment.location||'未知地点'}} 
                span(class="text-primary") -- 
                span {{comment.phone||'未知型号'}}
        .content {{comment.comment}}
</template>

<script type='text/ecmascript-6'>
export default {
  props: ['comments', 'type'],
  methods:{
      handleClick(comment){
          if(this.type === 'user'){
              wx.navigateTo({
                  url: '/pages/detail/main?id=' + comment.bookid
              })
          }
      }
  }
}
</script>
<style lang='stylus' rel='stylesheet/stylus'>
.comment-list
    background #eee
    font-size 14px
    .comment
        background white
        margin-bottom 10px
        padding 5px 20px
        .content
            margin 10px 0
        .user
            .inline
                display inline-block
                .avatar
                    width 20px
                    height 20px
                    border-radius 50%


</style>