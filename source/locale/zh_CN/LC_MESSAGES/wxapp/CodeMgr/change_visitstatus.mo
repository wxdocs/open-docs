��    	      d               �   "   �   U   �   "   &  2   I    |  ,     V   �  '     |  +  "   �  U   �  "   !  2   D    w  ,   z  V   �  '   �   10. 修改线上代码可见状态 https://api.weixin.qq.com/wxa/change_visitstatus?access_token=TOKEN POST数据示例: { "action"="close" } 参数说明: { "errcode":0, "errmsg":"ok", } 错误码说明： 参数      说明 access_token    请使用第三方平台获取到的该小程序授权的authorizer_access_token action  设置可访问状态，发布后默认可访问，close为不可见，open为可见 返回说明（正常时返回的json示例）： 请求方式: POST（请使用https协议） 返回码     说明 -1      系统繁忙 85021   状态不可变 85022   action非法 （仅供第三方代小程序调用） Project-Id-Version: wxopen-docs 
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
 10. 修改线上代码可见状态 https://api.weixin.qq.com/wxa/change_visitstatus?access_token=TOKEN POST数据示例: { "action"="close" } 参数说明: { "errcode":0, "errmsg":"ok", } 错误码说明： 参数      说明 access_token    请使用第三方平台获取到的该小程序授权的authorizer_access_token action  设置可访问状态，发布后默认可访问，close为不可见，open为可见 返回说明（正常时返回的json示例）： 请求方式: POST（请使用https协议） 返回码     说明 -1      系统繁忙 85021   状态不可变 85022   action非法 （仅供第三方代小程序调用） 