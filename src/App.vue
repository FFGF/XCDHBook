<script type='text/ecmascript-6'>

export default {
  data () {
    return {
    }
  },
  async created () {
    // 设置登录地址
    // qcloud.setLoginUrl(config.loginUrl);
    // qcloud.login({
    //     success: function (userInfo) {
    //         console.log('登录成功', userInfo);
    //     },
    //     fail: function (err) {
    //         console.log('登录失败', err);
    //     }
    // });

    // const res = await get('/weapp/demo')
    // console.log('我累个去', res)
    // wx.request({
    //   url: config.host + '/weapp/demo', //仅为示例，并非真实的接口地址
    //   success: function(res) {
    //     console.log(res)
    //   }
    // })
    console.log('小程序启动了')
  }
}
</script>
<style lang='stylus' rel='stylesheet/stylus'>
.page-title
  padding-left 20px
  background #eee
  line-height 40px
  font-size 14px
.right
  float right
.text-footer
  text-align center
  font-size 12px
  margin-bottom 5px
.text-primary
  color #EA5A49
.btn
  color white
  background #EA5A49
  margin-bottom 10px
  padding-left 15px
  border-radius 2px
  font-size 16px
  line-height 40px
  height 40px
  width 100%
  text-align center
</style>