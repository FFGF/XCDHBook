<!--  -->
<template lang='pug'>
    .container
      .userinfo
        img(:src="userinfo.avatarUrl", alt="")
        p {{ userinfo.nickName }}
      YearProgress
      button(v-if='userinfo.openId' class="btn" @click='scanBook') 添加图书
      button(v-else
            open-type="getUserInfo",
            lang="zh_CN",
            @getuserinfo="login") 点击登录
</template>

<script type='text/ecmascript-6'>
import qcloud from 'wafer2-client-sdk'
import config from '@/config'
import {showSuccess, post, showModal} from '@/util'
import YearProgress from '@/components/YearProgress'

export default {
  components: {
    YearProgress
  },
  data () {
    return {
      userinfo: {
        avatarUrl: '../../../static/img/unlogin.png',
        nickName: '点击登录'
      }
    }
  },
  onShow () {
    let user = wx.getStorageSync('userinfo')
    if (user) {
      this.userinfo = user
    }
  },
  methods: {
    login () {
      let user = wx.getStorageSync('userinfo')
      const self = this
      if (!user) {
        qcloud.setLoginUrl(config.loginUrl)
        qcloud.login({
          success: function (userInfo) {
            console.log('登录成功', userInfo)
            qcloud.request({
              url: config.userUrl,
              login: true,
              success (userRes) {
                showSuccess('登录成功')
                wx.setStorageSync('userinfo', userRes.data.data)
                self.userinfo = userInfo
              }
            })
          },
          fail: function (err) {
            console.log('登录失败', err)
          }
        })
      }
    },
    async addBook (isbn) {
      const res = await post('/weapp/addbook', {
        isbn,
        openid: this.userinfo.openId
      })
      showModal('添加成功', `${res.title}添加成功`)
    },
    scanBook () {
      wx.scanCode({
        success: (res) => {
          if (res.result) {
            this.addBook(res.result)
          }
        }
      })
    }
  }
}
</script>
<style lang='stylus' rel='stylesheet/stylus'>
.container
  padding 0, 30rpx
  .userinfo
    margin-top 100rpx
    text-align center
    img 
      width 150rpx
      height 150rpx
      margin 20rpx
      border-radius 50%
</style>