��    8      �              �     �     �     �     �     �  \   �  \   N  d   �  e     ]   v     �     �     �     �     �  
   �          
       r        �     �     �  B   �  �   �  `   u  #   �     �     
     )     H     O     \     r     �     �     �  /   �     �     �     	     	  A   %	  P   g	     �	  D   �	  3   
  $   D
  '   i
  '   �
     �
     �
     �
     �
     �
  |  �
     y     �     �     �     �  \   �  \   *  d   �  e   �  ]   R     �     �     �     �     �  
   �     �     �     �  r   �     e     q     w  B   �  �   �  `   Q  #   �     �     �          $     +     8     N     j     }     �  /   �     �     �     �     �  A     P   C     �  D   �  3   �  $      '   E  '   m     �     �     �     �     �   1.系统模板列表 2.模板关键词 3.添加模板 4.我的模板 5.删除模板 ``POST`` **https**://api.weixin.qq.com/cgi-bin/wxopen/template/add?access_token=ACCESS_TOKEN ``POST`` **https**://api.weixin.qq.com/cgi-bin/wxopen/template/del?access_token=ACCESS_TOKEN ``POST`` **https**://api.weixin.qq.com/cgi-bin/wxopen/template/library/get?access_token=ACCESS_TOKEN ``POST`` **https**://api.weixin.qq.com/cgi-bin/wxopen/template/library/list?access_token=ACCESS_TOKEN ``POST`` **https**://api.weixin.qq.com/cgi-bin/wxopen/template/list?access_token=ACCESS_TOKEN access_token content count example id keyword_id list name offset offset和count用于分页，表示从offset开始，拉取count条记录，offset从0开始，count最大为20。 template_id title total_count 下发模板消息接口，详见小程序模板消息下发说明 为了便于第三方开发者对小程序模板消息接口的模版进行设置，更好得发送模版消息，现提供如下接口： 为便于第三方开发者对帐号下已存在的模板进行操作，现提供如下接口： 关键词id，添加模板时需要 关键词内容 关键词内容对应的示例 删除帐号下的某个模板 参数 参数说明 号下的模板列表 小程序模板消息设置 接口调用凭证 是 是否必须 模板id，发送小程序模板消息时所需 模板内容 模板内容示例 模板库标题总数 模板标题 模板标题id（获取模板标题下的关键词库时需要） 模板标题id，可通过接口获取，也可登录小程序后台查看获取 模板标题内容 添加至帐号下的模板id，发送小程序模板消息时所需 组合模板并添加至帐号下的个人模板库 获取小程序模板库标题列表 获取帐号下已存在的模板列表 获取某个模板标题下关键词库 要删除的模板id 说明 请求数据 请求方式 返回结果 Project-Id-Version: wxopen-docs 
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
 1.系统模板列表 2.模板关键词 3.添加模板 4.我的模板 5.删除模板 ``POST`` **https**://api.weixin.qq.com/cgi-bin/wxopen/template/add?access_token=ACCESS_TOKEN ``POST`` **https**://api.weixin.qq.com/cgi-bin/wxopen/template/del?access_token=ACCESS_TOKEN ``POST`` **https**://api.weixin.qq.com/cgi-bin/wxopen/template/library/get?access_token=ACCESS_TOKEN ``POST`` **https**://api.weixin.qq.com/cgi-bin/wxopen/template/library/list?access_token=ACCESS_TOKEN ``POST`` **https**://api.weixin.qq.com/cgi-bin/wxopen/template/list?access_token=ACCESS_TOKEN access_token content count example id keyword_id list name offset offset和count用于分页，表示从offset开始，拉取count条记录，offset从0开始，count最大为20。 template_id title total_count 下发模板消息接口，详见小程序模板消息下发说明 为了便于第三方开发者对小程序模板消息接口的模版进行设置，更好得发送模版消息，现提供如下接口： 为便于第三方开发者对帐号下已存在的模板进行操作，现提供如下接口： 关键词id，添加模板时需要 关键词内容 关键词内容对应的示例 删除帐号下的某个模板 参数 参数说明 号下的模板列表 小程序模板消息设置 接口调用凭证 是 是否必须 模板id，发送小程序模板消息时所需 模板内容 模板内容示例 模板库标题总数 模板标题 模板标题id（获取模板标题下的关键词库时需要） 模板标题id，可通过接口获取，也可登录小程序后台查看获取 模板标题内容 添加至帐号下的模板id，发送小程序模板消息时所需 组合模板并添加至帐号下的个人模板库 获取小程序模板库标题列表 获取帐号下已存在的模板列表 获取某个模板标题下关键词库 要删除的模板id 说明 请求数据 请求方式 返回结果 