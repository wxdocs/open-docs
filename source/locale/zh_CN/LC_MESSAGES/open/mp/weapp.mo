��    H      \              �  #   �     �     �     �     �     �          
                    "     (     .      4     U     W     ]     u     }  L   �     �  E   �  H   0  G   y  <   �     �          &  /   D     t  �   �          7    ?  -   [	  -   �	  ?   �	     �	  E   
  A   J
     �
     �
  0   �
     �
  *   �
       *   (  ?   S     �     �  ~   �     >     W     p  -   �     �  '   �  i   �     e     l  .   z     �     �     �     �  	   �     �     �  *        2  |  K  #   �     �     �          #     )     /     5     ;     A     G     M     S     Y      _     �     �     �     �     �  L   �     �  E     H   [  G   �  <   �     )     D     Q  /   o     �  �   �     G     b    j  -   �  -   �  ?   �     "  E   /  A   u     �     �  0   �     �  *        7  *   S  ?   ~     �     �  ~   �     i     �     �  -   �     �  '   �  i   &     �     �  .   �     �     �     �     �  	             %  *   2     ]   1.获取公众号关联的小程序 2. 关联小程序 3.解除已关联的小程序 89007 89008 89009 89010 89011 89012 89013 89015 89016 89017 89035 POST（请使用 https 协议） \ appid email：小程序邮箱 errcode errmsg func_info：微信认证及支付信息，0 表示未开通，1 表示开通 headimg_url：头像 url https://api.weixin.qq.com/cgi-bin/wxopen/wxamplink?access_token=TOKEN https://api.weixin.qq.com/cgi-bin/wxopen/wxamplinkget?access_token=TOKEN https://api.weixin.qq.com/cgi-bin/wxopen/wxampunlink?access_token=TOKEN nearby_display_status：是否展示在附近的小程序中 nickname：小程序名称 notify_users released：是否已经发布 selected：是否在公众号管理页展示中 show_profile status：关联状态 1：已关联；2：等待小程序管理员确认中；3：小程序管理员拒绝关联 12：等到公众号管理员确认中； username：小程序 gh_id wxopens 为帮助公众号通过第三方关联、管理小程序，公众平台把关联小程序及相关管理功能添加到 “小程序管理”权限集。公众号需要先把该权限集授权给第三方平台，第三方平台才可以调用此接口进行关联和管理操作。 公众号本月关联不同主体达到上限 公众号本月关联相同主体达到上限 公众号管理员收到模板消息，同意关联小程序。 关联成功 关联流程（需要公众号和小程序管理员双方确认）： 关联的小程序列表，具有 items 字段，内带有参数: 参数 参数说明 在附近中展示的小程序不能取消关联 小程序 appid 小程序为海外帐号，不允许关联 小程序关联达到上限 小程序本月被关联的名额已用完 小程序管理员收到模板消息，同意关联公众号。 小程序管理权限集 小程序被封禁 已经从公众平台后台发起关联申请，处于小程序管理员确认中，无法从第三方重复发起关联申请 已经关联该小程序 已经发送关联邀请 无需携带的参数 是否发送模板消息通知公众号粉丝 是否展示公众号主页中 第三方平台调用接口发起关联 等待管理员同意的中间状态可使用“获取公众号关联的小程序”接口进行查询。 说明 请求方式: 请求方式: POST（请使用 https 协议） 请求示例 请求示例： 返回说明 错误信息 错误码 错误码说明 错误说明 门店、小店小程序不能取消关联 需携带的参数如下 Project-Id-Version: wxopen-docs 
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
 1.获取公众号关联的小程序 2. 关联小程序 3.解除已关联的小程序 89007 89008 89009 89010 89011 89012 89013 89015 89016 89017 89035 POST（请使用 https 协议） \ appid email：小程序邮箱 errcode errmsg func_info：微信认证及支付信息，0 表示未开通，1 表示开通 headimg_url：头像 url https://api.weixin.qq.com/cgi-bin/wxopen/wxamplink?access_token=TOKEN https://api.weixin.qq.com/cgi-bin/wxopen/wxamplinkget?access_token=TOKEN https://api.weixin.qq.com/cgi-bin/wxopen/wxampunlink?access_token=TOKEN nearby_display_status：是否展示在附近的小程序中 nickname：小程序名称 notify_users released：是否已经发布 selected：是否在公众号管理页展示中 show_profile status：关联状态 1：已关联；2：等待小程序管理员确认中；3：小程序管理员拒绝关联 12：等到公众号管理员确认中； username：小程序 gh_id wxopens 为帮助公众号通过第三方关联、管理小程序，公众平台把关联小程序及相关管理功能添加到 “小程序管理”权限集。公众号需要先把该权限集授权给第三方平台，第三方平台才可以调用此接口进行关联和管理操作。 公众号本月关联不同主体达到上限 公众号本月关联相同主体达到上限 公众号管理员收到模板消息，同意关联小程序。 关联成功 关联流程（需要公众号和小程序管理员双方确认）： 关联的小程序列表，具有 items 字段，内带有参数: 参数 参数说明 在附近中展示的小程序不能取消关联 小程序 appid 小程序为海外帐号，不允许关联 小程序关联达到上限 小程序本月被关联的名额已用完 小程序管理员收到模板消息，同意关联公众号。 小程序管理权限集 小程序被封禁 已经从公众平台后台发起关联申请，处于小程序管理员确认中，无法从第三方重复发起关联申请 已经关联该小程序 已经发送关联邀请 无需携带的参数 是否发送模板消息通知公众号粉丝 是否展示公众号主页中 第三方平台调用接口发起关联 等待管理员同意的中间状态可使用“获取公众号关联的小程序”接口进行查询。 说明 请求方式: 请求方式: POST（请使用 https 协议） 请求示例 请求示例： 返回说明 错误信息 错误码 错误码说明 错误说明 门店、小店小程序不能取消关联 需携带的参数如下 