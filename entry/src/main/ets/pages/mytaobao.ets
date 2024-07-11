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

      //  购物车页面
      Row(){
        Text('我的淘宝页面').height('100%').width('100%').fontSize(100).textAlign(TextAlign.Center)
      }.height('89%').width('100%')


      Row(){
        //淘
        Column() {
          Text().width('80%').height('40%').backgroundColor(Color.Green)
            .onClick(()=>{
              router.pushUrl({
                url : "pages/Index"
              })
            })

          Text('淘').width('100%').fontSize(15).height('20%').textAlign(TextAlign.Center)
        }.width('20%').backgroundColor(Color.Gray)

        //视频
        Column() {
          Text().width('80%').height('40%').backgroundColor(Color.Green)


          Text('视频').width('100%').fontSize(15).height('20%').textAlign(TextAlign.Center)
        }.width('20%').backgroundColor(Color.White)

        //消息
        Column() {
          Text().width('80%').height('40%').backgroundColor(Color.Green)
          Text('消息').width('100%').fontSize(15).height('20%').textAlign(TextAlign.Center)
        }.width('20%').backgroundColor(Color.Gray)

        //购物车
        Column() {
          Text().width('80%').height('40%').backgroundColor(Color.Green)
            .onClick(()=>{
              router.pushUrl({
                url : "pages/car"
              })
            })
          Text('购物车').width('100%').fontSize(15).height('20%').textAlign(TextAlign.Center)
        }.width('20%').backgroundColor(Color.White)

        //我的淘宝
        Column() {
          Text().width('80%').height('40%').backgroundColor(Color.Green)
            .onClick(()=>{
              router.pushUrl({
                url : "pages/mytaobao"
              })
            })

          Text('我的淘宝').width('100%').fontSize(15).height('20%').textAlign(TextAlign.Center)
        }.width('20%').backgroundColor(Color.Gray)


      }.height('11%').width('100%')




    }
    .height('100%')
    .width('100%')
  }
}