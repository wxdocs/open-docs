��    S      �              L     M  '   P  #   x  !   �  x   �  L   7  f   �  <   �     (  ,  D  �   q  g   �  
   c	  �   n	  ;   �	  �   .
  �   �
    �     �     �     �  #   �  *       ,  v  A  	   �  >   �  A        C     ^  �   r     E  &   d  o   �  �   �  �   �  %   �  �   �  �   �  "   y     �      �  >   �  A        \     d  C   s  3   �     �  *   �  g   *  +   �  h   �  6   '     ^  #   o     �     �  _   �  $        0  H   6  )     8   �  !   �  l     �   q  6     �   ?  B   &  �   i  J   �  �   7  �   �     �  �      �   �   �   Y!    ."  �   N#  4   �#  0   .$  |  _$     �%  '   �%  #   &  !   +&  x   M&  L   �&  f   '  <   z'     �'  ,  �'  �    )  g   �)  
   �)  �   �)  ;   �*  �   �*  �   Z+    ,     +.     ?.     W.  #   l.  *   �.    �.  v  �/  	   G1  >   Q1  A   �1     �1     �1  �   2     �2  &   �2  o   3  �   �3  �   d4  %   '5  �   M5  �   86  "   7     +7      I7  >   j7  A   �7     �7     �7  C   8  3   F8     z8  *   �8  g   �8  +   !9  h   M9  6   �9     �9  #   �9     ":     $:  _   ::  $   �:     �:  H   �:  )   ;  8   8;  !   q;  l   �;  �    <  6   �<  �   �<  B   �=  �   �=  J   {>  �   �>  �   �?     �@  �   �@  �   _A  �   �A    �B  �   �C  4   �D  0   �D   *; -keep class com.tencent.mm.opensdk.** { -keep class com.tencent.mm.sdk.** { -keep class com.tencent.wxop.** { // APP_ID 替换为你的应用从官方网站申请到的合法appID private static final String APP_ID = "wx88888888"; // IWXAPI 是第三方app和微信通信的openApi接口 private IWXAPI api; // 初始化一个 WXTextObject 对象 WXTextObject textObj = new WXTextObject(); textObj.text = text; // 将应用的appId注册到微信 api.registerApp(APP_ID); // 将该app注册到微信 // 构造一个Resp GetMessageFromWX.Resp resp = new GetMessageFromWX.Resp(); // 将req的transaction设置到resp对象中，其中bundle为微信传递过来的Intent所带的内容，通过getExtras()方法获取 resp.transaction = new GetMessageFromWX.Req(bundle).transaction; resp.message = msg; // 用 WXTextObject 对象初始化一个 WXMediaMessage 对象 WXMediaMessage msg = new WXMediaMessage(textObj); msg.description = text; // 通过WXAPIFactory工厂，获取IWXAPI的实例 api = WXAPIFactory.createWXAPI(this, APP_ID, true); //do share //初始化一个 WXTextObject 对象，填写分享的文本内容 WXTextObject textObj = new WXTextObject(); textObj.text = text; //建议动态监听微信启动广播进行注册到微信 //用 WXTextObject 对象初始化一个 WXMediaMessage 对象 WXMediaMessage msg = new WXMediaMessage(); msg.mediaObject = textObj; msg.description = text; //调用api接口，发送数据到微信 api. sendResp (resp) ; 具体要发送的内容由第三方app开发者定义，具体可参考微信开发工具包中的SDK Sample Demo源码。 //调用api接口，发送数据到微信 api.sendReq(req); 需要注意的是，SendMessageToWX.Req的scene成员，如果scene填WXSceneSession，那么消息会发送至微信的会话内。如果scene填WXSceneTimeline（微信4.2以上支持，com.tencent.mm.opensdk.constants.Build.java里面定义了各个功能支持的版本号，如果需要检查微信版本支持API的情况， 可调用IWXAPI的getWXAppSupportAPI方法,比如，要判断微信是否支持分享到朋友圈功能，可以如下所示进行判断： 1.申请你的AppID 2.下载SDK及API文档 3.搭建开发环境 4.在代码中使用开发工具包 :wxopen:`Android接入指南 <1417751808>` <!-- for mta statistics, not necessary--> <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/> <uses-permission android:name="android.permission.READ_PHONE_STATE"/> <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/> [2] 注册到微信 </activity> b. b. 实现IWXAPIEventHandler接口，微信发送的请求将回调到onReq方法，发送到微信请求的响应结果将回调到onResp方法（注意做好版本兼容逻辑，如果WXEntryActivity实现为透明Activity，最好在onReq和onResp处理完成后finish掉当前界面，避免收到不支持的事件的时候，透明Activity无法关闭） <activity <uses-permission android:name="android.permission.INTERNET" /> @Override public void onReceive(Context context, Intent intent) { Android Studio环境下： Eclipse环境下： SendMessageToWX.Req req = new SendMessageToWX.Req(); req.transaction = String.valueOf(System.currentTimeMillis());  //transaction字段用与唯一标示一个请求 req.message = msg; req.scene = mTargetScene; [1] AndroidManifest.xml 设置 [1] 在Eclipse中建立你的工程。 [1]如果需要混淆代码，为了保证sdk的正常使用，需要在proguard.cfg加上下面两行配置： [2] 在工程中新建一个libs目录，将开发工具包中libs目录下的libammsdk.jar复制到该目录中（如下图所示，建立了一个名为SDK_Sample 的工程，并把jar包复制到libs目录下）。 [3] 右键单击工程，选择Build Path中的Configure Build Path...，选中Libraries这个tab，并通过Add Jars...导入工程libs目录下的libammsdk.jar文件。（如下图所示）。 [4] 接收微信的请求及返回值 android:name=".wxapi.WXEntryActivity" android:label="@string/app_name" android:theme="@android:style/Theme.Translucent.NoTitleBar" android:exported="true" android:taskAffinity="net.sourceforge.simcpux" android:launchMode="singleTask"> api.handleIntent(getIntent(), this); 当微信发送请求到你的应用，将通过IWXAPIEventHandler接口的onReq方法进行回调，类似的，应用请求微信的响应结果将通过onResp回调。 api.registerApp(Constants.APP_ID); boolean sendReq(BaseReq req); boolean sendResp(BaseResp resp); compile 'com.tencent.mm.opensdk:wechat-sdk-android-with-mta:+' compile 'com.tencent.mm.opensdk:wechat-sdk-android-without-mta:+' debug { dependencies { if (api.getWXAppSupportAPI() >= Build.TIMELINE_SUPPORTED_SDK_INT) { import com.tencent.mm.opensdk.openapi.WXTextObject; private regToWx() { registerReceiver(new BroadcastReceiver() { sendReq是第三方app主动发送消息给微信，发送完成之后会切回到第三方app界面。 sendReq的实现示例，如下图所示： sendResp是微信向第三方app请求数据，第三方app回应数据之后会切回到微信界面。 sendResp的实现与SendReq类似，如下图所示： signingConfigs { storeFile file("../debug.keystore") } } Eclipse环境下： } [2]如果需要运行SDK Sample工程，需要通过指定的debug.keystore来进行签名： } [3] 发送请求或响应到微信 } 或 } 那么消息会发送至朋友圈。scene默认值为WXSceneSession。 } （其中，前者包含统计功能） }, new IntentFilter(ConstantsAPI.ACTION_REFRESH_WXAPP)); 前往下载微信SDK示例代码 在Android Studio中新建你的工程，并保证网络设置可以成功从jcenter下载微信SDK即可。 在WXEntryActivity中将接收到的intent及实现了IWXAPIEventHandler接口的对象传递给IWXAPI接口的handleIntent方法，示例如下图： 在build.gradle文件中，添加如下依赖即可： 在你的包名相应目录下新建一个wxapi目录，并在该wxapi目录下新增一个WXEntryActivity类，该类继承自Activity（例如应用程序的包名为net.sourceforge.simcpux，则新添加的类如下图所示） 在你需要使用微信终端API的文件中导入相应的类。 如果你的程序需要接收微信发送的请求，或者接收发送到微信请求的响应结果，需要下面3步操作： 并在manifest文件里面加上exported属性，设置为true，例如： 注1：微信SDK改成通过Gradle的方式发布到jcenter，包名做了相应修改，从原来的com.tencent.mm.sdk修改为com.tencent.mm.opensdk，需要开发者修改对应的import语句。 注2：本文为微信Android终端开发工具的新手使用教程，只涉及教授SDK的使用方法，默认读者已经熟悉IDE的基本使用方法（Android Studio（推荐） 或 Eclipse），以及具有一定的编程知识基础等。 注意事项 添加必要的权限支持（其中网络权限如果没有使用扫码登录功能非必要；后三个权限，如果没有使用mta，也非必要，即使有使用mta，去掉也不影响功能）： 现在，你的程序要发送请求或发送响应到微信终端，可以通过IWXAPI的 sendReq 和 sendResp 两个方法来实现。 至此，你已经能使用微信Android开发工具包的API内容了。如果想更详细了解每个API函数的用法，请查阅 Android 平台参考手册 或自行下载阅读微信SDK Sample Demo源码。 要使你的程序启动后微信终端能响应你的程序，必须在代码中向微信终端注册你的id。（如下图所示，可以在程序入口Activity的onCreate回调函数处，或其他合适的地方将你的应用id注册到微信。注册函数示例如下图所示。 请到 开发者应用登记页面 进行登记，登记并选择移动应用进行设置后，将该应用提交审核，只有审核通过的应用才能进行开发。 请前往“资源下载页 ”下载最新SDK包。 请查阅文档《如何运行SDK Demo工程 》 Project-Id-Version: wxopen-docs 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-11 22:48+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 *; -keep class com.tencent.mm.opensdk.** { -keep class com.tencent.mm.sdk.** { -keep class com.tencent.wxop.** { // APP_ID 替换为你的应用从官方网站申请到的合法appID private static final String APP_ID = "wx88888888"; // IWXAPI 是第三方app和微信通信的openApi接口 private IWXAPI api; // 初始化一个 WXTextObject 对象 WXTextObject textObj = new WXTextObject(); textObj.text = text; // 将应用的appId注册到微信 api.registerApp(APP_ID); // 将该app注册到微信 // 构造一个Resp GetMessageFromWX.Resp resp = new GetMessageFromWX.Resp(); // 将req的transaction设置到resp对象中，其中bundle为微信传递过来的Intent所带的内容，通过getExtras()方法获取 resp.transaction = new GetMessageFromWX.Req(bundle).transaction; resp.message = msg; // 用 WXTextObject 对象初始化一个 WXMediaMessage 对象 WXMediaMessage msg = new WXMediaMessage(textObj); msg.description = text; // 通过WXAPIFactory工厂，获取IWXAPI的实例 api = WXAPIFactory.createWXAPI(this, APP_ID, true); //do share //初始化一个 WXTextObject 对象，填写分享的文本内容 WXTextObject textObj = new WXTextObject(); textObj.text = text; //建议动态监听微信启动广播进行注册到微信 //用 WXTextObject 对象初始化一个 WXMediaMessage 对象 WXMediaMessage msg = new WXMediaMessage(); msg.mediaObject = textObj; msg.description = text; //调用api接口，发送数据到微信 api. sendResp (resp) ; 具体要发送的内容由第三方app开发者定义，具体可参考微信开发工具包中的SDK Sample Demo源码。 //调用api接口，发送数据到微信 api.sendReq(req); 需要注意的是，SendMessageToWX.Req的scene成员，如果scene填WXSceneSession，那么消息会发送至微信的会话内。如果scene填WXSceneTimeline（微信4.2以上支持，com.tencent.mm.opensdk.constants.Build.java里面定义了各个功能支持的版本号，如果需要检查微信版本支持API的情况， 可调用IWXAPI的getWXAppSupportAPI方法,比如，要判断微信是否支持分享到朋友圈功能，可以如下所示进行判断： 1.申请你的AppID 2.下载SDK及API文档 3.搭建开发环境 4.在代码中使用开发工具包 :wxopen:`Android接入指南 <1417751808>` <!-- for mta statistics, not necessary--> <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/> <uses-permission android:name="android.permission.READ_PHONE_STATE"/> <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/> [2] 注册到微信 </activity> b. b. 实现IWXAPIEventHandler接口，微信发送的请求将回调到onReq方法，发送到微信请求的响应结果将回调到onResp方法（注意做好版本兼容逻辑，如果WXEntryActivity实现为透明Activity，最好在onReq和onResp处理完成后finish掉当前界面，避免收到不支持的事件的时候，透明Activity无法关闭） <activity <uses-permission android:name="android.permission.INTERNET" /> @Override public void onReceive(Context context, Intent intent) { Android Studio环境下： Eclipse环境下： SendMessageToWX.Req req = new SendMessageToWX.Req(); req.transaction = String.valueOf(System.currentTimeMillis());  //transaction字段用与唯一标示一个请求 req.message = msg; req.scene = mTargetScene; [1] AndroidManifest.xml 设置 [1] 在Eclipse中建立你的工程。 [1]如果需要混淆代码，为了保证sdk的正常使用，需要在proguard.cfg加上下面两行配置： [2] 在工程中新建一个libs目录，将开发工具包中libs目录下的libammsdk.jar复制到该目录中（如下图所示，建立了一个名为SDK_Sample 的工程，并把jar包复制到libs目录下）。 [3] 右键单击工程，选择Build Path中的Configure Build Path...，选中Libraries这个tab，并通过Add Jars...导入工程libs目录下的libammsdk.jar文件。（如下图所示）。 [4] 接收微信的请求及返回值 android:name=".wxapi.WXEntryActivity" android:label="@string/app_name" android:theme="@android:style/Theme.Translucent.NoTitleBar" android:exported="true" android:taskAffinity="net.sourceforge.simcpux" android:launchMode="singleTask"> api.handleIntent(getIntent(), this); 当微信发送请求到你的应用，将通过IWXAPIEventHandler接口的onReq方法进行回调，类似的，应用请求微信的响应结果将通过onResp回调。 api.registerApp(Constants.APP_ID); boolean sendReq(BaseReq req); boolean sendResp(BaseResp resp); compile 'com.tencent.mm.opensdk:wechat-sdk-android-with-mta:+' compile 'com.tencent.mm.opensdk:wechat-sdk-android-without-mta:+' debug { dependencies { if (api.getWXAppSupportAPI() >= Build.TIMELINE_SUPPORTED_SDK_INT) { import com.tencent.mm.opensdk.openapi.WXTextObject; private regToWx() { registerReceiver(new BroadcastReceiver() { sendReq是第三方app主动发送消息给微信，发送完成之后会切回到第三方app界面。 sendReq的实现示例，如下图所示： sendResp是微信向第三方app请求数据，第三方app回应数据之后会切回到微信界面。 sendResp的实现与SendReq类似，如下图所示： signingConfigs { storeFile file("../debug.keystore") } } Eclipse环境下： } [2]如果需要运行SDK Sample工程，需要通过指定的debug.keystore来进行签名： } [3] 发送请求或响应到微信 } 或 } 那么消息会发送至朋友圈。scene默认值为WXSceneSession。 } （其中，前者包含统计功能） }, new IntentFilter(ConstantsAPI.ACTION_REFRESH_WXAPP)); 前往下载微信SDK示例代码 在Android Studio中新建你的工程，并保证网络设置可以成功从jcenter下载微信SDK即可。 在WXEntryActivity中将接收到的intent及实现了IWXAPIEventHandler接口的对象传递给IWXAPI接口的handleIntent方法，示例如下图： 在build.gradle文件中，添加如下依赖即可： 在你的包名相应目录下新建一个wxapi目录，并在该wxapi目录下新增一个WXEntryActivity类，该类继承自Activity（例如应用程序的包名为net.sourceforge.simcpux，则新添加的类如下图所示） 在你需要使用微信终端API的文件中导入相应的类。 如果你的程序需要接收微信发送的请求，或者接收发送到微信请求的响应结果，需要下面3步操作： 并在manifest文件里面加上exported属性，设置为true，例如： 注1：微信SDK改成通过Gradle的方式发布到jcenter，包名做了相应修改，从原来的com.tencent.mm.sdk修改为com.tencent.mm.opensdk，需要开发者修改对应的import语句。 注2：本文为微信Android终端开发工具的新手使用教程，只涉及教授SDK的使用方法，默认读者已经熟悉IDE的基本使用方法（Android Studio（推荐） 或 Eclipse），以及具有一定的编程知识基础等。 注意事项 添加必要的权限支持（其中网络权限如果没有使用扫码登录功能非必要；后三个权限，如果没有使用mta，也非必要，即使有使用mta，去掉也不影响功能）： 现在，你的程序要发送请求或发送响应到微信终端，可以通过IWXAPI的 sendReq 和 sendResp 两个方法来实现。 至此，你已经能使用微信Android开发工具包的API内容了。如果想更详细了解每个API函数的用法，请查阅 Android 平台参考手册 或自行下载阅读微信SDK Sample Demo源码。 要使你的程序启动后微信终端能响应你的程序，必须在代码中向微信终端注册你的id。（如下图所示，可以在程序入口Activity的onCreate回调函数处，或其他合适的地方将你的应用id注册到微信。注册函数示例如下图所示。 请到 开发者应用登记页面 进行登记，登记并选择移动应用进行设置后，将该应用提交审核，只有审核通过的应用才能进行开发。 请前往“资源下载页 ”下载最新SDK包。 请查阅文档《如何运行SDK Demo工程 》 