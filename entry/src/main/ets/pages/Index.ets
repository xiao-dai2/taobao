import router from '@ohos.router';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State arrow_down: Resource = $r("app.media.arrow_down");
  @State input_scan: Resource = $r("app.media.input_scan");
  @State camera: Resource = $r("app.media.camera");



  build() {
    Column(){
       //共7行


      //  1 搜索框
      Row(){
        Text().width(40).height(40).margin({left:15})
          .backgroundImage(this.input_scan).backgroundImageSize(ImageSize.Contain)

        Text('|').fontSize(30).fontColor('#dbdcde').margin({left:10})

        Text("宽松女士上衣").fontSize(20).fontColor(Color.Gray).margin(({left:10}))
        Text().width(40).height(40).backgroundColor(Color.White).margin({left:30})
          .backgroundImage(this.camera).backgroundImageSize(ImageSize.Contain)
        Text("搜索").fontSize(20).fontColor(Color.White).margin(({left:10})).width(50).height(40)
          .backgroundColor('#ff6203').textAlign(TextAlign.Center).borderRadius(10)
      }.height('6%').width('96%').margin({top:20})
      .borderWidth(2).borderRadius(15).borderColor('#ff6203')

      //2 列表
      Row(){
        Text('关注').fontSize(20).fontColor(Color.Gray).margin(({left:5}))
        Text('推荐').fontSize(20).fontColor(Color.Gray).margin(({left:8}))
        Text('小时达').fontSize(20).fontColor(Color.Gray).margin(({left:8}))
        Text('运动日').fontSize(20).fontColor(Color.Gray).margin(({left:8}))
        Text('居家').fontSize(20).fontColor(Color.Gray).margin(({left:8}))
        Text('护肤').fontSize(20).fontColor(Color.Gray).margin(({left:8}))
        Text().width(23).height(23).margin({left:8})
          .backgroundImage(this.arrow_down).backgroundImageSize(ImageSize.Contain)

      }.height('4%').backgroundColor(Color.White).width('100%')
      //3 小程序
      Row(){

        Column(){
          Text().width('16%').height('65%').margin({top:'1%',left:'2%',right:'2%'})
            .backgroundImage($r("app.media.img1")).backgroundImageSize(ImageSize.Contain)
          Text('聚划算').fontSize(16).fontWeight(FontWeight.Bold)
        }

        Column(){
          Text().width('16%').height('65%').margin({top:'1%',left:'2%',right:'2%'})
            .backgroundImage($r("app.media.img2")).backgroundImageSize(ImageSize.Contain)
          Text('淘宝秒杀').fontSize(16).fontWeight(FontWeight.Bold)
        }
        Column(){
          Text().width('16%').height('65%').margin({top:'1%',left:'2%',right:'2%'})
            .backgroundImage($r("app.media.img3")).backgroundImageSize(ImageSize.Contain)
          Text('淘宝直播').fontSize(16).fontWeight(FontWeight.Bold)
        }
        Column(){
          Text().width('16%').height('65%').margin({top:'1%',left:'2%',right:'2%'})
            .backgroundImage($r("app.media.img4")).backgroundImageSize(ImageSize.Contain)
          Text('红包优惠').fontSize(16).fontWeight(FontWeight.Bold)
        }
        Column(){
          Text().width('16%').height('65%').margin({top:'1%',left:'2%',right:'2%'})
            .backgroundImage($r("app.media.img5")).backgroundImageSize(ImageSize.Contain)
          Text('我的驿站').fontSize(16).fontWeight(FontWeight.Bold)
        }

      }.height('12%').width('100%')

      //4 小程序
      Row(){

        Column(){
          Text().width('16%').height('65%').margin({top:'2%',left:'2%',right:'2%'})
            .backgroundImage($r("app.media.img6")).backgroundImageSize(ImageSize.Contain)
          Text('淘票票').fontSize(16).fontWeight(FontWeight.Bold)
        }

        Column(){
          Text().width('16%').height('65%').margin({top:'2%',left:'2%',right:'2%'})
            .backgroundImage($r("app.media.img7")).backgroundImageSize(ImageSize.Contain)
          Text('芭芭农场').fontSize(16).fontWeight(FontWeight.Bold)
        }
        Column(){
          Text().width('16%').height('65%').margin({top:'2%',left:'2%',right:'2%'})
            .backgroundImage($r("app.media.img8")).backgroundImageSize(ImageSize.Contain)
          Text('红包签到').fontSize(16).fontWeight(FontWeight.Bold)
        }
        Column(){
          Text().width('16%').height('65%').margin({top:'2%',left:'2%',right:'2%'})
            .backgroundImage($r("app.media.img9")).backgroundImageSize(ImageSize.Contain)
          Text('阿里拍卖').fontSize(16).fontWeight(FontWeight.Bold)
        }
        Column(){
          Text().width('16%').height('65%').margin({top:'2%',left:'2%',right:'2%'})
            .backgroundImage($r("app.media.img10")).backgroundImageSize(ImageSize.Contain)
          Text('新人特惠').fontSize(16).fontWeight(FontWeight.Bold)
        }
      }.height('12%').backgroundColor(Color.White).width('100%')

      //5 商品
      Row(){
        Text().width('50%').height('100%').margin({left:4})
          .backgroundImage($r('app.media.img_1')).backgroundImageSize(ImageSize.Contain)

        Text().width('50%').height('100%').margin({left:4})
          .backgroundImage($r('app.media.img_2')).backgroundImageSize(ImageSize.Contain)
      }.height('28%').width('100%')
      //6 商品
      Row(){
        Text().width('50%').height('100%').margin({left:4})
          .backgroundImage($r('app.media.img_3')).backgroundImageSize(ImageSize.Contain)
        Text().width('50%').height('100%').margin({left:4})
          .backgroundImage($r('app.media.img_4')).backgroundImageSize(ImageSize.Contain)
      }.height('28%').width('100%')


      //7下标
      Row()
      {
        Column()
        {
          Text()
            .width('50%')
            .height('60%')
            .backgroundImage($r('app.media.home'))
            .backgroundImageSize(ImageSize.FILL)
            .onClick(()=>{
              router.pushUrl({
                url:'pages/Index'
              })
            })
          Text('首页')
            .width('100%')
            .height('40%')
            .textAlign(TextAlign.Center)
            .fontColor(Color.Orange)

        }
        .width('20%')
        .height('100%')
        Text()
          .width('20%')
          .height('100%')
        Column()
        {
          Text()
            .width('50%')
            .height('60%')
            .backgroundImage($r('app.media.gouwuche'))
            .backgroundImageSize(ImageSize.FILL)
            .onClick(()=>{
              router.replaceUrl({
                url:'pages/shopping_car'
              })
            })
          Text('购物车')
            .width('100%')
            .height('40%')
            .textAlign(TextAlign.Center)
        }
        .width('20%')
        .height('100%')
        Text()
          .width('20%')
          .height('100%')
        Column()
        {
          Text()
            .width('50%')
            .height('60%')
            .backgroundImage($r('app.media.mine'))
            .backgroundImageSize(ImageSize.FILL)
            .onClick(()=>{
              router.pushUrl({
                url:'pages/mytaobao'
              })
            })
          Text('我的')
            .width('100%')
            .height('40%')
            .textAlign(TextAlign.Center)
        }
        .width('20%')
        .height('100%')
      }
      .width('100%')
      .height('8%')
      .backgroundColor(Color.White)


    }
    .height('100%')
    .width('100%')
  }
}