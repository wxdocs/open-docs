��          �               <     =  3   Y  �   �     %  P   9  M   �  O   �     (  M   *     x     �  +   �  ,   �  8   �  9    a   Y     �  |  �     U  3   q  �   �     =  P   Q  M   �  O   �     @	  M   B	     �	     �	  +   �	  ,   �	  8   �	  9  7
  a   q     �   "errcode":0, "errmsg":"ok", "errcode":0, "errmsg":"ok", "gray_release_plan" : { "status" : 1, //0:初始状态 1:执行中 2:暂停中 3:执行完毕 4:被删除 "create_timestamp" : 1517553721, //创建时间 "gray_percentage" : 8 16. 分阶段发布 https://api.weixin.qq.com/wxa/getgrayreleaseplan?access_token=TOKEN 返回说明 https://api.weixin.qq.com/wxa/grayrelease?access_token=TOKEN POST数据示例 https://api.weixin.qq.com/wxa/revertgrayrelease?access_token=TOKEN 返回说明 { { "gray_percentage": 1 //灰度的百分比，1到100的整数 } 返回说明 } 错误码说明 }, 请求方式: GET（请使用https协议） 请求方式: POST（请使用https协议） 错误码     说明 0       成功 -1      系统错误 错误码     说明 0       成功 -1      系统错误 86002   小程序未初始化完成 85079   小程序没有线上版本，不能进行灰度 85080   小程序提交的审核未审核通过 85081   无效的发布比例 85082   当前的发布比例需要比之前设置的高 （2）取消分阶段发布 错误码     说明 0       成功 -1      系统错误 （3）查询当前分阶段发布详情 （1）分阶段发布接口 Project-Id-Version: wxopen-docs 
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
 "errcode":0, "errmsg":"ok", "errcode":0, "errmsg":"ok", "gray_release_plan" : { "status" : 1, //0:初始状态 1:执行中 2:暂停中 3:执行完毕 4:被删除 "create_timestamp" : 1517553721, //创建时间 "gray_percentage" : 8 16. 分阶段发布 https://api.weixin.qq.com/wxa/getgrayreleaseplan?access_token=TOKEN 返回说明 https://api.weixin.qq.com/wxa/grayrelease?access_token=TOKEN POST数据示例 https://api.weixin.qq.com/wxa/revertgrayrelease?access_token=TOKEN 返回说明 { { "gray_percentage": 1 //灰度的百分比，1到100的整数 } 返回说明 } 错误码说明 }, 请求方式: GET（请使用https协议） 请求方式: POST（请使用https协议） 错误码     说明 0       成功 -1      系统错误 错误码     说明 0       成功 -1      系统错误 86002   小程序未初始化完成 85079   小程序没有线上版本，不能进行灰度 85080   小程序提交的审核未审核通过 85081   无效的发布比例 85082   当前的发布比例需要比之前设置的高 （2）取消分阶段发布 错误码     说明 0       成功 -1      系统错误 （3）查询当前分阶段发布详情 （1）分阶段发布接口 