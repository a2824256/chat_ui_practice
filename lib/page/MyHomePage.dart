import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(44.0),
            child: AppBar(
              brightness: Brightness.light,
              elevation: 0,
              backgroundColor: Color(0xEDEDEDED),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  tooltip: "Alarm",
                  onPressed: () {
                    print("Alarm");
                  },
                ),
                IconButton(
                  icon: Icon(Icons.add_circle_outline, color: Colors.black),
                  tooltip: "Home",
                  onPressed: () {
                    print("Home");
                  },
                ),
              ],
              title: Container(
                  child: Text(
                widget.title,
                style: TextStyle(fontSize: 16, color: Colors.black),
              )),
            )),
        body: Center(
            child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 0.5, color: Color(0xffe5e5e5)))),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 100),
                width: double.infinity,
                height: 0.5,
                color: Color(0xffe5e5e5),
              ),
              Scrollbar(
                child: Column(
                  children: <Widget>[
                    WechatLine(
                        '舔狗1号',
                        '圣诞节送什么礼物给女神好呢？',
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577262041421&di=868943102c8944fdf4409dbe38a9f3de&imgtype=0&src=http%3A%2F%2Fa-ssl.duitang.com%2Fuploads%2Fitem%2F201708%2F28%2F20170828231731_ML5WA.thumb.224_0.jpeg',
                        false,
                        '00:00',
                        30),
                    WechatDividingline(),
                    WechatLine(
                        '微商1号',
                        '雪梨手机九折，圣诞送女神最适合！！',
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577262015258&di=25cb6b13afb118808ffe8f5b54ff37e5&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20171114%2F0fc43e9ad58f4a5cb41a018925b0e475.jpeg',
                        false,
                        '11:35',
                        20),
                    WechatDividingline(),
                    WechatLine(
                        '客户1号',
                        '尾款已转，请查收~'
                            '',
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577262494348&di=81234310d76d6f7a2e55a070f923c322&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201704%2F10%2F20170410073535_HXVfJ.thumb.700_0.jpeg',
                        false,
                        '11:35',
                        10),
                    WechatDividingline(),
                    WechatLine(
                        '猫奴公众号',
                        '你的账号已被封停',
                        'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg',
                        true,
                        '11:35',
                        11),
                    WechatDividingline(),
                    WechatLine(
                        '微信支付',
                        '微信支付凭证',
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577261800017&di=a9a582237429dfbcd12b4756e39d5e45&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fbbb1ffa65e1488524133d773d412c8c08a987f612d15-4T60HX_fw658',
                        true,
                        '11:35',
                        13),
                    WechatDividingline(),
                    WechatLine(
                        '微信支付团队',
                        '工具人说话内容',
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577261800017&di=a9a582237429dfbcd12b4756e39d5e45&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fbbb1ffa65e1488524133d773d412c8c08a987f612d15-4T60HX_fw658',
                        true,
                        '12:35',
                        10),
                    WechatDividingline(),
                  ],
                ),
              )
            ],
          ),
        )));
  }

  Widget WechatDividingline() {
    return Container(
      margin: EdgeInsets.only(left: 72, top: 5),
      width: double.infinity,
      height: 0.5,
      color: Colors.grey[200],
    );
  }

  Widget WechatLine(String name, String content, String avatar, bool is_pubacc,
      String time, int badgeNumber) {
    return (Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 13, top: 15),
          child: Badge(
            toAnimate: false,
            padding: EdgeInsets.all(2.5),
            position: BadgePosition.topLeft(left: 33, top: -3),
            elevation: 0.0,
//          borderRadius: 0.5,
            badgeContent: Text(
              '${badgeNumber}',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.network(avatar, width: 45, height: 45)),
          ),
        ),
        Container(
          width: 250,
          padding: EdgeInsets.only(left: 15, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(name,
                    style: TextStyle(
                        color: is_pubacc ? Colors.blue[900] : Colors.black,
                        fontSize: 16)),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                child: Text(content,
                    style: TextStyle(color: Colors.grey[400], fontSize: 11)),
              )
            ],
          ),
        ),
        Container(
          height: 25,
//                          decoration: new BoxDecoration(
//                            color: Colors.grey,
//                          ),
          margin: EdgeInsets.only(
            left: 3,
          ),
          child: Text(time,
              style: TextStyle(color: Colors.grey[400], fontSize: 11)),
        )
      ],
    ));
  }
}
