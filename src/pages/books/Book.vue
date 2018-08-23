<!--  -->
<template lang='pug'>
    div
      TopSwiper(:tops='tops')
      Card(v-for='book in books' :key='book.id' :book='book') {{book.title}}
      p(class="text-footer" v-if='!more') 没有更多数据
</template>

<script type='text/ecmascript-6'>
import {get} from '@/util'
import Card from '@/components/Card'
import TopSwiper from '@/components/TopSwiper'

export default {
  components: {
    Card,
    TopSwiper
  },
  data () {
    return {
      books: [],
      page: 0,
      more: true,
      tops: []
    }
  },
  mounted () {
    this.getList(true)
    this.getTop()
  },
  methods: {
    async getList (init) {
      if (init === true) {
        this.page = 0
        this.more = true
      }
      wx.showNavigationBarLoading()
      const books = await get('/weapp/booklist', {page: this.page})
      if (books.list.length < 10 && this.page > 0) {
        this.more = false
      }
      if (init) {
        this.books = books.list
        wx.stopPullDownRefresh()
      } else {
        // 下拉刷新，需要累加数据而不是直接覆盖
        this.books = this.books.concat(books.list)
      }
      wx.hideNavigationBarLoading()
    },
    async getTop () {
      const tops = await get('/weapp/top')
      this.tops = tops.list
    }
  },
  onPullDownRefresh () {
    this.getList(true)
  },
  onReachBottom () {
    if (!this.more) {
      // 没有更多数据
      return false
    }
    this.page += 1
    this.getList()
    this.getTop()
  }
}
</script>
<style lang='stylus' rel='stylesheet/stylus'>
</style>