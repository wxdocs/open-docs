# 代码管理

第三方平台在开发者工具上开发完成后,可点击上传,代码将上传到开放平台草稿箱中,第三方平台可选择将代码添加到模板中,获得代码模版 ID 后,可调用以下接口进行代码管理。

## 1. 上传代码

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/wxa/commit?access_token=TOKEN

POST 数据示例:

```json
{
  "template*id": 0,
  "ext_json": "JSON_STRING", //\_ext_json 需为 string 类型,请参考下面的格式*
  "user_version": "V1.0",
  "user_desc": "test"
}
```

参数说明:
参数 说明
access_token 请使用第三方平台获取到的该小程序授权的 authorizer_access_token
template_id 代码库中的代码模版 ID
ext_json 第三方自定义的配置
user_version 代码版本号,开发者可自定义（长度不要超过 64 个字符）
user_desc 代码描述,开发者可自定义

ext_json 需为 string 类型,格式示例如下 ：

```json
{
  "extAppid": "",
  "ext": {
    "attr1": "value1",
    "attr2": "value2"
  },
  "extPages": {
    "index": {},
    "search/index": {}
  },
  "pages": ["index", "search/index"],
  "window": {},
  "networkTimeout": {},
  "tabBar": {}
}
```

（1）为了便于第三方平台使用同一个小程序模版为不同的小程序提供服务,第三方可以将自定义信息放置在 ext_json 中,在模版小程序中,可以使用接口获取自定义信息,从而区分不同的小程序。详见：小程序模版开发

（2）ext_json 中的参数可选,参数详见 https://mp.weixin.qq.com/debug/wxadoc/dev/framework/config.html

（3）如果代码中已经有配置,则配置的合并规则为：除了 pages 和 tabBar.list 直接覆盖原配置,其他都为插入或同级覆盖。

特殊字段说明：
参数 说明
ext 自定义字段仅允许在这里定义,可在小程序中调用
extPages 页面配置
extAppid 授权方 Appid,可填入商户 AppID,以区分不同商户

返回说明（正常时返回的 json 示例）：

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

错误码说明：
返回码 说明
-1 系统繁忙
85013 无效的自定义配置
85014 无效的模版编号
85043 模版错误
85044 代码包超过大小限制
85045 ext_json 有不存在的路径
85046 tabBar 中缺少 path
85047 pages 字段为空
85048 ext_json 解析失败

## 2. 获取体验码

请求方式: get（请使用 https 协议）

https://api.weixin.qq.com/wxa/get_qrcode?access_token=TOKEN&path=page%2Findex%3Faction%3D1

参数说明
参数 说明
path 指定体验版二维码跳转到某个具体页面（如果不需要的话,则不需要填 path 参数,可在路径后以"参数"方式传入参数）
具体的路径加参数需要 urlencode,比如 page/index?action=1 编码后得到 page%2Findex%3Faction%3D1

返回说明（正确情况下的返回 HTTP 头如下）：

HTTP/1.1 200 OK

Connection: close

Content-Type: image/jpeg

Content-disposition: attachment; filename="QRCode.jpg"

Date: Sun, 06 Jan 2013 10:20:18 GMT

Cache-Control: no-cache, must-revalidate

Content-Length: 339721

错误情况下的返回 JSON 数据包示例如下：

```json
{
  "errcode": -1,
  "errmsg": "system error"
}
```

## 3. 获取已设置类目

注意：该接口可获取已设置的二级类目及用于代码审核的可选三级类目。

请求方式: get（请使用 https 协议）

https://api.weixin.qq.com/wxa/get_category?access_token=TOKEN

参数说明
参数 说明
access_token 请使用第三方平台获取到的该小程序授权的 authorizer_access_token

返回说明（正常时返回的 json 示例）：

```json
{
  "errcode": 0,
  "errmsg": "ok",
  "category_list": [
    {
      "first_class": "工具",
      "second_class": "备忘录",
      "first_id": 1,
      "second_id": 2
    },
    {
      "first_class": "教育",
      "second_class": "学历教育",
      "third_class": "高等",
      "first_id": 3,
      "second_id": 4,
      "third_id": 5
    }
  ]
}
```

返回参数说明：

| 参数          | 说明               |
| ------------- | ------------------ |
| category_list | 可填选的类目列表   |
| first_class   | 一级类目名称       |
| second_class  | 二级类目名称       |
| third_class?  | 三级类目名称       |
| first_id      | 一级类目的 ID 编号 |
| second_id     | 二级类目的 ID 编号 |
| third_id      | 三级类目的 ID 编号 |

错误码说明：

| 返回码 | 说明     |
| ------ | -------- |
| -1     | 系统繁忙 |

## 4. 获取代码页面配置

请求方式: get（请使用 https 协议）

https://api.weixin.qq.com/wxa/get_page?access_token=TOKEN

参数说明

| 参数         | 说明                                                           |
| ------------ | -------------------------------------------------------------- |
| access_token | 请使用第三方平台获取到的该小程序授权的 authorizer_access_token |

返回说明（正常时返回的 json 示例）：

```json
{
  "errcode": 0,
  "errmsg": "ok",
  "page_list": ["index", "page/list", "page/detail"]
}
```

返回参数说明：

| 参数      | 说明                   |
| --------- | ---------------------- |
| page_list | page_list 页面配置列表 |

错误码说明：

| 返回码 | 说明                         |
| ------ | ---------------------------- |
| -1     | 系统繁忙                     |
| 86000  | 不是由第三方代小程序进行调用 |
| 86001  | 不存在第三方的已经提交的代码 |

## 5. 提交审核

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/wxa/submit_audit?access_token=TOKEN

POST 数据示例:

```json
{
  "item_list": [
    {
      "address": "index",
      "tag": "学习 生活",
      "first_class": "文娱",
      "second_class": "资讯",
      "first_id": 1,
      "second_id": 2,
      "title": "首页"
    },
    {
      "address": "page/logs/logs",
      "tag": "学习 工作",
      "first_class": "教育",
      "second_class": "学历教育",
      "third_class": "高等",
      "first_id": 3,
      "second_id": 4,
      "third_id": 5,
      "title": "日志"
    }
  ]
}
```

参数说明

| 参数         | 说明                                                                 |
| ------------ | -------------------------------------------------------------------- |
| access_token | 请使用第三方平台获取到的该小程序授权的 authorizer_access_token       |
| item_list    | 提交审核项的一个列表（至少填写 1 项,至多填写 5 项）                  |
| address      | 小程序的页面,可通过"获取小程序的第三方提交代码的页面配置"接口获得    |
| tag          | 小程序的标签,多个标签用空格分隔,标签不能多于 10 个,标签长度不超过 20 |
| first_class  | 一级类目名称,可通过"获取授权小程序帐号的可选类目"接口获得            |
| second_class | 二级类目(同上)                                                       |
| third_class  | 三级类目(同上)                                                       |
| first_id     | 一级类目的 ID,可通过"获取授权小程序帐号的可选类目"接口获得           |
| second_id    | 二级类目的 ID(同上)                                                  |
| third_id     | 三级类目的 ID(同上)                                                  |
| title        | 小程序页面的标题,标题长度不超过 32                                   |

返回说明（正常时返回的 json 示例）：

```json
{
  "errcode": 0,
  "errmsg": "ok",
  "auditid": 1234567
}
```

返回参数说明：

| 参数    | 说明     |
| ------- | -------- |
| auditid | 审核编号 |

错误码说明：

| 返回码 | 说明                                                                   |
| ------ | ---------------------------------------------------------------------- |
| -1     | 系统繁忙                                                               |
| 86000  | 不是由第三方代小程序进行调用                                           |
| 86001  | 不存在第三方的已经提交的代码                                           |
| 85006  | 标签格式错误                                                           |
| 85007  | 页面路径错误                                                           |
| 85008  | 类目填写错误                                                           |
| 85009  | 已经有正在审核的版本                                                   |
| 85010  | item_list 有项目为空                                                   |
| 85011  | 标题填写错误                                                           |
| 85023  | 审核列表填写的项目数不在 1-5 以内                                      |
| 85077  | 小程序类目信息失效（类目中含有官方下架的类目,请重新选择类目）          |
| 86002  | 小程序还未设置昵称. 头像. 简介。请先设置完后再重新提交                 |
| 85085  | 近 7 天提交审核的小程序数量过多,请耐心等待审核完毕后再次提交           |
| 85086  | 提交代码审核之前需提前上传代码                                         |
| 85087  | 小程序已使用 api navigateToMiniProgram,请声明跳转 appid 列表后再次提交 |

!!! note ""

    注意：需要先提交体验版后再提交代码包审核。

## 6. 获取审核结果

当小程序有审核结果后,第三方平台将可以通过开放平台上填写的回调地址,获得审核结果通知。

审核通过时,接收到的推送 XML 数据包示例如下：

```xml
<xml>
  <ToUserName><![CDATA[gh_fb9688c2a4b2]]></ToUserName>
  <FromUserName><![CDATA[od1P50M-fNQI5Gcq-trm4a7apsU8]]></FromUserName>
  <CreateTime>1488856741</CreateTime>
  <MsgType><![CDATA[event]]></MsgType>
  <Event><![CDATA[weapp_audit_success]]></Event>
  <SuccTime>1488856741</SuccTime>
</xml>
```

参数说明：

| 参数         | 说明                                           |
| ------------ | ---------------------------------------------- |
| ToUserName   | 小程序的原始 ID                                |
| FromUserName | 发送方帐号（一个 OpenID,此时发送方是系统帐号） |
| CreateTime   | 消息创建时间 （整型）,时间戳                   |
| MsgType      | 消息类型,event                                 |
| Event        | 事件类型 weapp_audit_success                   |
| SuccTime     | 审核成功时的时间（整形）,时间戳                |

审核不通过时,接收到的推送 XML 数据包示例如下：

```xml
<xml>
  <ToUserName><![CDATA[gh_fb9688c2a4b2]]></ToUserName>
  <FromUserName><![CDATA[od1P50M-fNQI5Gcq-trm4a7apsU8]]></FromUserName>
  <CreateTime>1488856591</CreateTime>
  <MsgType><![CDATA[event]]></MsgType>
  <Event><![CDATA[weapp_audit_fail]]></Event>
  <Reason><![CDATA[1:账号信息不符合规范:<br>(1):包含色情因素<br>2:服务类目"金融业-保险_"与你提交代码审核时设置的功能页面内容不一致:<br>(1):功能页面设置的部分标签不属于所选的服务类目范围。<br>(2):功能页面设置的部分标签与该页面内容不相关。<br>]]></Reason>
  <FailTime>1488856591</FailTime>
</xml>
```

参数说明：

| 参数         | 说明                                           |
| ------------ | ---------------------------------------------- |
| ToUserName   | 小程序的原始 ID                                |
| FromUserName | 发送方帐号（一个 OpenID,此时发送方是系统帐号） |
| CreateTime   | 消息创建时间 （整型）,时间戳                   |
| MsgType      | 消息类型,event                                 |
| Event        | 事件类型 weapp_audit_success                   |
| Reason       | 审核失败的原因                                 |
| FailTime     | 审核失败时的时间（整型）,时间戳                |

除了消息通知之外,第三方平台也可通过接口查询审核状态。

## 7. 查询指定版本审核状态

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/wxa/get_auditstatus?access_token=TOKEN

POST 数据示例:

```json
{
  "auditid": 1234567
}
```

参数说明:

| 参数         | 说明                                                           |
| ------------ | -------------------------------------------------------------- |
| access_token | 请使用第三方平台获取到的该小程序授权的 authorizer_access_token |
| auditid      | 提交审核时获得的审核 id                                        |

返回说明（正常时返回的 json 示例）：

```json
{
  "errcode": 0,
  "errmsg": "ok",
  "status": 1,
  "reason": "帐号信息不合规范"
}
```

返回参数说明：

| 参数   | 说明                                                        |
| ------ | ----------------------------------------------------------- |
| status | 审核状态,其中 0 为审核成功,1 为审核失败,2 为审核中,3 已撤回 |
| reason | 当 status=1,审核被拒绝时,返回的拒绝原因                     |

错误码说明：

| 返回码 | 说明                         |
| ------ | ---------------------------- |
| -1     | 系统繁忙                     |
| 86000  | 不是由第三方代小程序进行调用 |
| 86001  | 不存在第三方的已经提交的代码 |
| 85012  | 无效的审核 id                |

## 8. 查询最新一次提交的审核状态

请求方式: GET（请使用 https 协议）

https://api.weixin.qq.com/wxa/get_latest_auditstatus?access_token=TOKEN

参数说明:

| 参数         | 说明                                                           |
| ------------ | -------------------------------------------------------------- |
| access_token | 请使用第三方平台获取到的该小程序授权的 authorizer_access_token |

返回说明（正常时返回的 json 示例）：

```json
{
  "errcode": 0,
  "errmsg": "ok",
  "auditid": "1234567",
  "status": 1,
  "reason": "帐号信息不合规范"
}
```

返回参数说明：

| 参数    | 说明                                                        |
| ------- | ----------------------------------------------------------- |
| auditid | 最新的审核 ID                                               |
| status  | 审核状态,其中 0 为审核成功,1 为审核失败,2 为审核中,3 已撤回 |
| reason  | 当 status=1,审核被拒绝时,返回的拒绝原因                     |

错误码说明：

| 返回码 | 说明                         |
| ------ | ---------------------------- |
| -1     | 系统繁忙                     |
| 86000  | 不是由第三方代小程序进行调用 |
| 86001  | 不存在第三方的已经提交的代码 |
| 85012  | 无效的审核 id                |

## 9. 发布已通过审核的小程序

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/wxa/release?access_token=TOKEN

POST 数据示例:

```json
{}
```

参数说明：

请填写空的数据包,POST 的 json 数据包为空即可。

返回说明（正常时返回的 json 示例）：

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

错误码说明：

| 返回码 | 说明               |
| ------ | ------------------ |
| -1     | 系统繁忙           |
| 85019  | 没有审核版本       |
| 85020  | 审核状态未满足发布 |

## 10. 修改线上代码的可见状态

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/wxa/change_visitstatus?access_token=TOKEN

POST 数据示例:

```json
{
"action"="close"
}
```

参数说明:

| 参数         | 说明                                                           |
| ------------ | -------------------------------------------------------------- |
| access_token | 请使用第三方平台获取到的该小程序授权的 authorizer_access_token |
| action       | 设置可访问状态,发布后默认可访问,close 为不可见,open 为可见     |

返回说明（正常时返回的 json 示例）：

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

错误码说明：

| 返回码 | 说明        |
| ------ | ----------- |
| -1     | 系统繁忙    |
| 85021  | 状态不可变  |
| 85022  | action 非法 |

## 11. 版本回退

请求方式:GET（请使用 https 协议）

https://api.weixin.qq.com/wxa/revertcoderelease?access_token=TOKEN

返回说明

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

错误码说明

| 错误码 | 说明                                                                                                                        |
| ------ | --------------------------------------------------------------------------------------------------------------------------- |
| 0      | 成功                                                                                                                        |
| -1     | 系统错误                                                                                                                    |
| 87011  | 现网已经在灰度发布,不能进行版本回退                                                                                         |
| 87012  | 该版本不能回退,可能的原因：1:无上一个线上版用于回退 2:此版本为已回退版本,不能回退 3:此版本为回退功能上线之前的版本,不能回退 |

## 12. 查询当前设置的最低基础库版本及各版本用户占比

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/cgi-bin/wxopen/getweappsupportversion?access_token=TOKEN

无需携带的参数

返回说明

```json
{
  "errcode": 0,
  "errmsg": "ok",
  "now_version": "1.0.0",
  "uv_info": {
    "items": [
      {
        "percentage": 0,
        "version": "1.0.0"
      },
      {
        "percentage": 0,
        "version": "1.0.1"
      },
      {
        "percentage": 0,
        "version": "1.1.0"
      }
    ]
  }
}
```

参数说明

| 参数        | 说明                                                                                                     |
| ----------- | -------------------------------------------------------------------------------------------------------- |
| errcode     | 错误码                                                                                                   |
| errmsg      | 错误信息                                                                                                 |
| now_version | 当前版本                                                                                                 |
| uv_info     | 受影响用户占比,item 参数里面为一系列数组,每个数组带有参数 percentage（受影响比例）以及 version（版本号） |

## 13. 设置最低基础库版本

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/cgi-bin/wxopen/setweappsupportversion?access_token=TOKEN

请求示例：

```json
{
  "version": "1.0.0"
}
```

参数说明

| 参数    | 说明 |
| ------- | ---- |
| version | 版本 |

返回说明

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

参数说明

| 参数    | 说明     |
| ------- | -------- |
| errcode | 错误码   |
| errmsg  | 错误信息 |

错误码说明

| 错误码 | 错误说明     |
| ------ | ------------ |
| 85015  | 版本输入错误 |

## 14. 设置小程序"扫普通链接二维码打开小程序"能力

功能介绍文档：

扫描普通链接二维码打开小程序功能介绍

此功能包括 4 个接口：

1. 增加或修改二维码规则
2. 获取已设置的二维码规则
3. 获取校验文件名称和内容
4. 删除已设置的二维码规则
5. 发布已设置的二维码规则

流程及接口说明

### 1. 增加或修改二维码规则

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/cgi-bin/wxopen/qrcodejumpadd?access_token=TOKEN

请求示例：

```json
{
  "prefix": "https://weixin.qq.com/qrcodejump",
  "permit_sub_rule": "1",
  "path": "pages/index/index",
  "open_version": "1",
  "debug_url": [
    "https://weixin.qq.com/qrcodejump?a=1",
    "https://weixin.qq.com/qrcodejump?a=2"
  ],
  "is_edit": 0
}
```

需携带的参数如下

| 参数            | 参数说明                                                                                                                                           |
| --------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| prefix          | 二维码规则                                                                                                                                         |
| permit_sub_rule | 是否独占符合二维码前缀匹配规则的所有子规 1 为不占用,2 为占用详细说明 ：https://mp.weixin.qq.com/debug/wxadoc/introduction/qrcode.html#前缀占用规则 |
| path            | 小程序功能页面                                                                                                                                     |
| open_version    | 测试范围：1 为开发版（配置只对开发者生效）2 为体验版（配置对管理员. 体验者生效）3 为线上版本（配置对管理员. 开发者和体验者生效）                   |
| debug_url       | 测试链接（选填）可填写不多于 5 个用于测试的二维码完整链接,此链接必须符合已填写的二维码规则。                                                       |
| is_edit         | 编辑标志位,0 表示新增二维码规则,1 表示修改已有二维码规则                                                                                           |

返回说明

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

参数说明

| 参数    | 说明     |
| ------- | -------- |
| errcode | 错误码   |
| errmsg  | 错误信息 |

### 2. 获取已设置的二维码规则

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/cgi-bin/wxopen/qrcodejumpget?access_token=TOKEN

无需携带的参数

返回说明

```json
{
  "rule_list": [
    {
      "prefix": "https://weixin.qq.com/qrcodejump",
      "open_version": 1,
      "state": 1,
      "permit_sub_rule": 1,
      "path": "pages / index / index ",
      "debug_url": [
        "https://weixin.qq.com/qrcodejump?a=1",
        "https://weixin.qq.com/qrcodejump?a=1",
        "https://weixin.qq.com/qrcodejump?a=2",
        "https: //weixin.qq.com/qrcodejump?a=2"
      ]
    },
    {
      "prefix": "https://weixin.qq.com/qrcodejumptest",
      "open_version": 1,
      "state": 1,
      "permit_sub_rule": 1,
      "path": "pages/index/index",
      "debug_url": [
        "https://weixin.qq.com/qrcodejumptest?a=1",
        "https://weixin.qq.com/qrcodejumptest?a=1",
        "https://weixin.qq.com/qrcodejumptest?a=2",
        "https: //weixin.qq.com/qrcodejumptest?a=2"
      ]
    }
  ],
  "qrcodejump_open": 0,
  "errcode": 0,
  "list_size": 2,
  "errmsg": "ok",
  "qrcodejump_pub_quota": 20
}
```

参数说明

| 参数                 | 说明                                                                                                                                                                        |
| -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| errcode              | 错误码                                                                                                                                                                      |
| errmsg               | 错误信息                                                                                                                                                                    |
| qrcodejump_open      | 是否已经打开二维码跳转链接设置                                                                                                                                              |
| qrcodejump_pub_quota | 本月还可发布的次数                                                                                                                                                          |
| list_size            | 二维码规则数量                                                                                                                                                              |
| rule_list            | 二维码规则详情,数组形式                                                                                                                                                     |
| prefix               | 位于 rule_list 字段内,二维码规则                                                                                                                                            |
| permit_sub_rule      | 位于 rule_list 字段内,是否独占符合二维码前缀匹配规则的所有子规则：1 为不占用,2 为占用,详细说明：https://mp.weixin.qq.com/debug/wxadoc/introduction/qrcode.html#前缀占用规则 |
| path                 | 位于 rule_list 字段内,小程序功能页面                                                                                                                                        |
| open_version         | 位于 rule_list 字段内,测试范围：1 为开发版（配置只对开发者生效）2 为体验版（配置对管理员. 体验者生效）3 为线上版本（配置对管理员. 开发者和体验者生效）                      |
| debug_url            | 位于 rule_list 字段内,测试链接（选填）可填写不多于 5 个用于测试的二维码完整链接,此链接必须符合已填写的二维码规则。                                                          |
| state                | 位于 rule_list 字段内,发布标志位,1 表示未发布,2 表示已发布                                                                                                                  |

### 3. 获取校验文件名称及内容

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/cgi-bin/wxopen/qrcodejumpdownload?access_token=TOKEN

无需携带的参数

返回说明

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

| 参数         | 说明     |
| ------------ | -------- |
| errcode      | 错误码   |
| errmsg       | 错误信息 |
| file_name    | 文件名称 |
| file_content | 文件内容 |

下载随机校验文件,并将文件上传至服务器指定位置的目录下,方可通过所属权校验。

验证文件放置规则：?放置于 URL 中声明的最后一级子目录下,若无子目录,则放置于 host 所属服务器的顶层目录下。

### 4. 删除已设置的二维码规则

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/cgi-bin/wxopen/qrcodejumpdelete?access_token=TOKEN

请求示例：

```json
{
  "prefix": "https://weixin.qq.com/qrcodejump"
}
```

参数说明

| 参数   | 参数说明   |
| ------ | ---------- |
| prefix | 二维码规则 |

返回说明

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

参数说明

| 参数    | 说明     |
| ------- | -------- |
| errcode | 错误码   |
| errmsg  | 错误信息 |

### 5. 发布已设置的二维码规则

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/cgi-bin/wxopen/qrcodejumppublish?access_token=TOKEN

请求示例：

```json
{
  "prefix": "https://weixin.qq.com/qrcodejump"
}
```

需携带的参数如下

| 参数   | 参数说明   |
| ------ | ---------- |
| prefix | 二维码规则 |

返回说明

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

| 参数    | 说明                                                       |
| ------- | ---------------------------------------------------------- |
| errcode | 错误码                                                     |
| errmsg  | 错误信息                                                   |
| 错误码  | 错误说明                                                   |
| 85066   | 链接错误                                                   |
| 85068   | 测试链接不是子链接                                         |
| 85069   | 校验文件失败                                               |
| 85070   | 链接为黑名单                                               |
| 85071   | 已添加该链接,请勿重复添加                                  |
| 85072   | 该链接已被占用                                             |
| 85073   | 二维码规则已满                                             |
| 85074   | 小程序未发布, 小程序必须先发布代码才可以发布二维码跳转规则 |
| 85075   | 个人类型小程序无法设置二维码规则                           |
| 85076   | 链接没有 ICP 备案                                          |

## 15. 小程序审核撤回

单个帐号每天审核撤回次数最多不超过 1 次,一个月不超过 10 次。

请求方式:

GET（请使用 https 协议）

https://api.weixin.qq.com/wxa/undocodeaudit?access_token=TOKEN

返回说明

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

错误码说明

| 错误码 | 说明                                      |
| ------ | ----------------------------------------- |
| 0      | 成功                                      |
| -1     | 系统错误                                  |
| 87013  | 撤回次数达到上限（每天一次,每个月 10 次） |

## 16.小程序分阶段发布

### 1. 分阶段发布接口

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/wxa/grayrelease?access_token=TOKEN

POST 数据示例

```json
{
  "gray_percentage": 1 //灰度的百分比,1 到 100 的整数
}
```

返回说明

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

错误码说明

| 错误码 | 说明                             |
| ------ | -------------------------------- |
| 0      | 成功                             |
| -1     | 系统错误                         |
| 86002  | 小程序未初始化完成               |
| 85079  | 小程序没有线上版本,不能进行灰度  |
| 85080  | 小程序提交的审核未审核通过       |
| 85081  | 无效的发布比例                   |
| 85082  | 当前的发布比例需要比之前设置的高 |

### 2. 取消分阶段发布

请求方式: GET（请使用 https 协议）

https://api.weixin.qq.com/wxa/revertgrayrelease?access_token=TOKEN

返回说明

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

错误码说明

| 错误码 | 说明     |
| ------ | -------- |
| 0      | 成功     |
| -1     | 系统错误 |

### 3. 查询当前分阶段发布详情

请求方式: GET（请使用 https 协议）

https://api.weixin.qq.com/wxa/getgrayreleaseplan?access_token=TOKEN

返回说明

```json
{
  "errcode": 0,
  "errmsg": "ok",
  "gray_release_plan": {
    "status": 1, //0:初始状态 1:执行中 2:暂停中 3:执行完毕 4:被删除
    "create_timestamp": 1517553721, //创建时间
    "gray_percentage": 8
  }
}
```

错误码说明

| 错误码 | 说明     |
| ------ | -------- |
| 0      | 成功     |
| -1     | 系统错误 |