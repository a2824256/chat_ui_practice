# chat_ui_practice

仿微信UI练习，基于Google Flutter框架

# Android实现与微信一样的状态栏与底部栏
在Android平台的style.xml文件将主题设置为Theme.Light.NoTitleBar，风格只有Black和Light两种黑底白字和白底黑字
```
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <style name="LaunchTheme" parent="@android:style/Theme.Light.NoTitleBar">
        <!-- Show a splash screen on the activity. Automatically removed when
             Flutter draws its first frame -->
        <item name="android:windowBackground">@drawable/launch_background</item>
    </style>
</resources>
```

在main.dart文件设置
```
import 'package:flutter/services.dart';
void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        //设置底部栏颜色
        systemNavigationBarColor: Colors.grey[50], // navigation bar color
        //设置状态栏颜色
        statusBarColor: Color(0XEEEEEE))); // status bar color
  }
}
```

# 使用插件
角标: badges: ^1.1.0

## 截图
<img src="https://github.com/a2824256/chat_ui_practice/blob/master/screenshot.jpg" width="350" height="700" />
