��    >                    �     �             6     <   M  &   �  #   �     �  .   �     !     '     -     ?     E     N  D   V  F   �  ?   �  R   "  B   u     �     �     �     �  	   �     �     �            	   #     -     =  -   P     ~  !   �  �   �     E     ^     z     �     �  '   �  +   �  0   �     ,	  `   K	     �	     �	     �	     �	     �	  -   �	  .   $
     S
     f
      z
     �
     �
  	   �
     �
  +   �
  |  �
     {     ~     �  6   �  <   �  &     #   /     S  .   p     �     �     �     �     �     �  D   �  F     ?   `  R   �  B   �     6     >     G     K  	   P     Z     q     �     �  	   �     �     �  -   �     �  !     �   .     �     �     �            '   %  +   M  0   y     �  `   �     *     C     P     W     d  -   t  .   �     �     �      �          )  	   6     @  +   P   -1 0 0 关闭，1 开启 1. 设置小程序隐私设置（是否可被搜索） 2. 查询小程序当前隐私设置（是否可被搜索） 3 小程序扫码公众号关注组件 3.1. 获取展示的公众号信息 3.2 设置展示的公众号 3.3 获取可以用来设置的公众号列表 85083 85084 POST 数据示例 appid can_open headimg https://api.weixin.qq.com/wxa/ getwxasearchstatus?access_token=TOKEN https://api.weixin.qq.com/wxa/changewxasearchstatus?access_token=TOKEN https://api.weixin.qq.com/wxa/getshowwxaitem?access_token=TOKEN https://api.weixin.qq.com/wxa/getwxamplinkforshow?page=0&num=20&access_token=TOKEN https://api.weixin.qq.com/wxa/updateshowwxaitem?access_token=TOKEN is_open nickname num page total_num wxa_subscribe_biz_flag 公众号 appid 公众号头像 公众号昵称 参数名 参数说明： 基础信息设置 如果开启，需要传新的公众号 appid 客户端样式 小程序后台功能设置位置 小程序接口文档可见：\ `开放能力 official-account <https://developers.weixin.qq.com/miniprogram/dev/component/official-account.html>`__ 展示的公众号 appid 展示的公众号 nickname 展示的公众号头像 总记录数 成功 搜索标记位被封禁，无法修改 是否可以设置 1 可以，0，不可以 是否已经设置，1 已设置，0，未设置 每页记录数，最大为 20 用户扫码使用小程序时，即可展示当前公众号，用户可直接关注公众号。 第几页，从 0 开始 系统错误 说明 请求参数 请求参数： 请求方式: GET（请使用 https 协议） 请求方式: POST（请使用 https 协议） 请求方式：GET 请求方式：POST 返回参数（JSON 格式）： 返回参数： 返回说明 错误码 错误码说明 非法的 status 值，只能填 0 或者 1 Project-Id-Version: wxopen-docs 
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
 -1 0 0 关闭，1 开启 1. 设置小程序隐私设置（是否可被搜索） 2. 查询小程序当前隐私设置（是否可被搜索） 3 小程序扫码公众号关注组件 3.1. 获取展示的公众号信息 3.2 设置展示的公众号 3.3 获取可以用来设置的公众号列表 85083 85084 POST 数据示例 appid can_open headimg https://api.weixin.qq.com/wxa/ getwxasearchstatus?access_token=TOKEN https://api.weixin.qq.com/wxa/changewxasearchstatus?access_token=TOKEN https://api.weixin.qq.com/wxa/getshowwxaitem?access_token=TOKEN https://api.weixin.qq.com/wxa/getwxamplinkforshow?page=0&num=20&access_token=TOKEN https://api.weixin.qq.com/wxa/updateshowwxaitem?access_token=TOKEN is_open nickname num page total_num wxa_subscribe_biz_flag 公众号 appid 公众号头像 公众号昵称 参数名 参数说明： 基础信息设置 如果开启，需要传新的公众号 appid 客户端样式 小程序后台功能设置位置 小程序接口文档可见：\ `开放能力 official-account <https://developers.weixin.qq.com/miniprogram/dev/component/official-account.html>`__ 展示的公众号 appid 展示的公众号 nickname 展示的公众号头像 总记录数 成功 搜索标记位被封禁，无法修改 是否可以设置 1 可以，0，不可以 是否已经设置，1 已设置，0，未设置 每页记录数，最大为 20 用户扫码使用小程序时，即可展示当前公众号，用户可直接关注公众号。 第几页，从 0 开始 系统错误 说明 请求参数 请求参数： 请求方式: GET（请使用 https 协议） 请求方式: POST（请使用 https 协议） 请求方式：GET 请求方式：POST 返回参数（JSON 格式）： 返回参数： 返回说明 错误码 错误码说明 非法的 status 值，只能填 0 或者 1 