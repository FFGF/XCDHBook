<!--  -->
<template lang='pug'>
.container
  CommentList(
    v-if="userinfo.openId"
    :comments="comments" 
    type='user')
  div(v-if='userinfo.openId')
    .page-title 我的图书
    Card(v-for='book in books' :key='book.id' :book='book')
    //- div(v-if='!books.length') 暂时还没添加图书，快去添加几本吧
</template>

<script type='text/ecmascript-6'>
import {get} from '@/util'
import CommentList from '@/components/CommentList'
import Card from '@/components/Card'
export default {
  data () {
    return {
      comments: [],
      userinfo: {},
      books: []
    }
  },
  components: {
    CommentList,
    Card
  },
  computed: {},
  onShow () {
    if(!this.userinfo.openId){
      let userinfo = wx.getStorageSync('userinfo')
      if(userinfo){
        this.userinfo = userinfo
        this.init()
      }
    }
  },
  methods: {
    async getComments(){
      const comments = await get('/weapp/commentlist',{
        openid:this.userinfo.openId
      })
      this.comments = comments.list
    },
    async getBooks(){
      const books = await get('/weapp/booklist',{
        openid:this.userinfo.openId
      })
      this.books = books.list
    },
    init(){
      wx.showNavigationBarLoading()
      this.getComments()
      this.getBooks()
      wx.hideNavigationBarLoading()
    },
  },
  onPullDownRefresh(){
      this.init()
      wx.stopPullDownRefresh()
    }
}
</script>
<style lang='stylus' rel='stylesheet/stylus'>
</style>