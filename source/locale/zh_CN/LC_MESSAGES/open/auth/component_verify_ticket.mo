��          �                 (        F     L  
   b     m     v     �    �  Y  �               )  	   6     @     V  |  c  (   �     	       
   %     0     9     G    _  Y  x     �     �     �  	   �     	     	   1. 推送 component_verify_ticket 协议 AppId ComponentVerifyTicket CreateTime InfoType Ticket 内容 component_verify_ticket component_verify_ticket的有效时间较component_access_token更长， 建议保存最近可用的component_verify_ticket， 在component_access_token过期之前使用该ticket进行更新， 避免出现因为ticket接收失败而无法更新component_access_token的情况。 在第三方平台创建审核通过后，微信服务器会向其“授权事件接收 URL”每隔 10分钟定时推送 component_verify_ticket。 第三方平台方在收到 ticket 推送后也需进行解密（详细请见【 :wxopen:`消息加解密接入指引 <open1419318479>` 】）， 接收到后必须直接返回字符串 success。 字段名称 字段描述 字段说明 时间戳 第三方平台 appid 请求数据 Project-Id-Version: wxopen-docs 
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
 1. 推送 component_verify_ticket 协议 AppId ComponentVerifyTicket CreateTime InfoType Ticket 内容 component_verify_ticket component_verify_ticket的有效时间较component_access_token更长， 建议保存最近可用的component_verify_ticket， 在component_access_token过期之前使用该ticket进行更新， 避免出现因为ticket接收失败而无法更新component_access_token的情况。 在第三方平台创建审核通过后，微信服务器会向其“授权事件接收 URL”每隔 10分钟定时推送 component_verify_ticket。 第三方平台方在收到 ticket 推送后也需进行解密（详细请见【 :wxopen:`消息加解密接入指引 <open1419318479>` 】）， 接收到后必须直接返回字符串 success。 字段名称 字段描述 字段说明 时间戳 第三方平台 appid 请求数据 