��          �               �     �     �     �     �     �  
   �     	  )     )   <  )   f     �  a   �     �          !     .  �   >       T     	   q     {  \  �     �  |  �     x     �     �     �     �  
   �     �  )   �  )     )   A     k  a   w     �     �     �     		  �   	     �	  T   �	  	   L
     V
  \  l
     �   9. 推送授权相关通知 AppId AuthorizationCode AuthorizationCodeExpiredTime AuthorizerAppid CreateTime InfoType POST 数据示例（取消授权通知） POST 数据示例（授权成功通知） POST 数据示例（授权更新通知） PreAuthCode nauthorized 是取消授权，updateauthorized 是更新授权，authorized 是授权成功通知 公众号或小程序 字段名称 字段描述 字段说明： 当公众号对第三方平台进行授权、取消授权、更新授权后，微信服务器会向第三方平台方的授权事件接收 URL（创建第三方平台时填写）推送相关通知。 授权码过期时间 授权码，可用于换取公众号的接口调用凭据，详细见上面的说明 时间戳 第三方平台 appid 第三方平台方在收到授权相关通知后也需进行解密（详细请见【消息加解密接入指引】），接收到后之后只需直接返回字符串 success。为了加强安全性，postdata 中的 xml 将使用服务申请时的加解密 key 来进行加密，具体请见【公众号第三方平台的加密解密技术方案】 预授权码 Project-Id-Version: wxopen-docs 
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
 9. 推送授权相关通知 AppId AuthorizationCode AuthorizationCodeExpiredTime AuthorizerAppid CreateTime InfoType POST 数据示例（取消授权通知） POST 数据示例（授权成功通知） POST 数据示例（授权更新通知） PreAuthCode nauthorized 是取消授权，updateauthorized 是更新授权，authorized 是授权成功通知 公众号或小程序 字段名称 字段描述 字段说明： 当公众号对第三方平台进行授权、取消授权、更新授权后，微信服务器会向第三方平台方的授权事件接收 URL（创建第三方平台时填写）推送相关通知。 授权码过期时间 授权码，可用于换取公众号的接口调用凭据，详细见上面的说明 时间戳 第三方平台 appid 第三方平台方在收到授权相关通知后也需进行解密（详细请见【消息加解密接入指引】），接收到后之后只需直接返回字符串 success。为了加强安全性，postdata 中的 xml 将使用服务申请时的加解密 key 来进行加密，具体请见【公众号第三方平台的加密解密技术方案】 预授权码 