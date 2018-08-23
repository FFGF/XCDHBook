<template lang='pug'>
div
    BookInfo(:info="info")
    CommentList(:comments="comments")
    .comment(v-if="showAdd")
        textarea(
            placeholder='请输入图书短评'
            maxlength='100'
            v-model='comment'
            class="textarea"
            )
        .location 地理位置：
            switch(color='#EA5A49' :checked="location" @change="getGeo")
            span(class='text-primary') {{location}}
        .phone 手机型号：
            switch(color='#EA5A49' :checked="phone" @change="getPhone")
            span(class='text-primary') {{phone}}
        button(@click="addComment" class='btn') 评论
    .text-footer(v-else) 未登录或者已经评论过了
    button(open-type='share' class='btn') 转发给好友
</template>

<script type='text/ecmascript-6'>
import {get, post, showModal} from '@/util'
import BookInfo from '@/components/BookInfo'
import CommentList from '@/components/CommentList'

export default{
  components: {
    BookInfo,
    CommentList
  },
  data () {
    return {
      bookid: '',
      info: {},
      comment: '',
      location: '',
      phone: '',
      userinfo: {},
      comments: []
    }
  },
  computed: {
    showAdd () {
      // 没登录
      if (!this.userinfo.openId) {
        return false
      }
      // 评论列表里面查到自己的openid
      if (this.comments.filter(v => v.openid === this.userinfo.openId).length) {
        return false
      }
      return true
    }
  },
  mounted () {
    this.bookid = this.$root.$mp.query.id
    this.getDetail()
    this.getComments()
    const userinfo = wx.getStorageSync('userinfo')
    if (userinfo) {
      this.userinfo = userinfo
    }
  },
  methods: {
    async getComments () {
      const comments = await get('/weapp/commentlist', {bookid: this.bookid})
      this.comments = comments.list || []
    },
    async addComment () {
      if (!this.comment) {
        return
      }
      const data = {
        openid: this.userinfo.openId,
        bookid: this.bookid,
        comment: this.comment,
        phone: this.phone,
        location: this.location
      }
      try {
        await post('/weapp/addcomment', data)
        this.comment = ''
        this.getComments()
      } catch (e) {
        showModal('失败', e.msg)
      }
    },
    async getDetail () {
      const info = await get('/weapp/bookdetail', {id: this.bookid})
      wx.setNavigationBarTitle({
        title: info.title
      })
      this.info = info
    },
    getGeo (e) {
      // igAlb0PdFRabmOegOKbeaIw81IXHz515
      const ak = 'igAlb0PdFRabmOegOKbeaIw81IXHz515'
      let url = 'http://api.map.baidu.com/geocoder/v2/'
      if (e.target.value) {
        wx.getLocation({
          success: geo => {
            wx.request({
              url,
              data: {
                ak,
                location: `${geo.latitude},${geo.longitude}`,
                output: 'json'
              },
              success: res => {
                if (res.data.status === 0) {
                  this.location = res.data.result.addressComponent.city
                } else {
                  this.location = '未知地点'
                }
              }
            })
          }
        })
      } else {
        this.location = ''
      }
    },
    getPhone (e) {
      if (e.target.value) {
        const phoneInfo = wx.getSystemInfoSync()
        this.phone = phoneInfo.model
      } else {
        // 没选中
        this.phone = ''
      }
    }
  },
  onShareAppMessage (res) {
    return {
      title: this.info.title,
      path: '/pages/detail/main?id=' + this.$root.$mp.query.id
    }
  }
}
</script>

<style lang='stylus' rel='stylesheet/stylus'>
.comment
    margin-top 10px
    .textarea
        width 730rpx
        height 200rpx
        background #eee
        padding 10rpx
    .location,.phone
        margin-top 10px
        padding 5px 10px

</style>