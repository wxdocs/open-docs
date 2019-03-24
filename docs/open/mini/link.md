# 小程序管理权限集

为帮助公众号通过第三方关联、管理小程序，公众平台把关联小程序及相关管理功能添加到 “小程序管理”权限集。公众号需要先把该权限集授权给第三方平台，第三方平台才可以调用此接口进行关联和管理操作。

## 1.获取公众号关联的小程序

POST: https://api.weixin.qq.com/cgi-bin/wxopen/wxamplinkget?access_token=TOKEN

无需携带的参数

返回说明

```json
{
  "errcode": 0,
  "errmsg": "ok",
  "wxopens": {
    "items": [
      {
        "status": 1,
        "username": "gh_xxxxxxxxx",
        "source": "SOURCE_NORMAL",
        "nickname": "aaaaaaa",
        "selected": 1,
        "nearby_display_status": 0,
        "released": 1,
        "headimg_url": "http://xxx.png",
        "func_infos": [
          {
            "status": 0,
            "id": 1,
            "name": "微信认证"
          },
          {
            "status": 0,
            "id": 2,
            "name": "微信支付"
          }
        ],
        "copy_verify_status": 1,
        "email": "xxxx@qq.com"
      },

      {
        "status": 3,
        "username": "gh_xxxxxxxxxx",
        "source": "SOURCE_NORMAL",
        "headimg_url": "http://yyy.png",
        "func_infos": [],
        "nickname": "bbbbbbb"
      }
    ]
  }
}
```

参数说明

| 参数    |       |                       |     | 说明                                         |
| ------- | ----- | --------------------- | --- | -------------------------------------------- |
| errcode |       |                       |     | 错误码                                       |
| errmsg  |       |                       |     | 错误信息                                     |
| wxopens |       |                       |     | 关联的小程序列表                             |
|         | items |                       |     | 内带有参数                                   |
|         |       | status                |     | 关联状态                                     |
|         |       |                       | 1   | 已关联；                                     |
|         |       |                       | 2   | 等待小程序管理员确认中                       |
|         |       |                       | 3   | 小程序管理员拒绝关联                         |
|         |       |                       | 12  | 等到公众号管理员确认中                       |
|         |       | username              |     | 小程序 gh_id                                 |
|         |       | nickname              |     | 小程序名称                                   |
|         |       | selected              |     | 是否在公众号管理页展示中                     |
|         |       | nearby_display_status |     | 是否展示在附近的小程序中                     |
|         |       | released              |     | 是否已经发布                                 |
|         |       | headimg_url           |     | 头像 url                                     |
|         |       | func_info             |     | 微信认证及支付信息，0 表示未开通，1 表示开通 |
|         |       | email                 |     | 小程序邮箱                                   |

## 2. 关联小程序

关联流程（需要公众号和小程序管理员双方确认）：

1. 第三方平台调用接口发起关联
2. 公众号管理员收到模板消息，同意关联小程序。
3. 小程序管理员收到模板消息，同意关联公众号。
4. 关联成功

等待管理员同意的中间状态可使用“获取公众号关联的小程序”接口进行查询。

请求方式:

POST:https://api.weixin.qq.com/cgi-bin/wxopen/wxamplink?access_token=TOKEN

请求示例：

```json
{
  "appid": "xxxxxx",
  "notify_users": "1",
  "show_profile": "1"
}
```

需携带的参数如下

| 参数         | 说明                           |
| ------------ | ------------------------------ |
| appid        | 小程序 appid                   |
| notify_users | 是否发送模板消息通知公众号粉丝 |
| show_profile | 是否展示公众号主页中           |

返回说明

```json
{ "errcode": 0, "errmsg": "ok" }
```

参数说明

| 参数    | 说明     |
| ------- | -------- |
| errcode | 错误码   |
| errmsg  | 错误信息 |

## 3.解除已关联的小程序

请求方式: POST:https://api.weixin.qq.com/cgi-bin/wxopen/wxampunlink?access_token=TOKEN

请求示例

```json
{
  "appid": "xxxxxx"
}
```

需携带的参数如下

| 参数  | 说明         |
| ----- | ------------ |
| appid | 小程序 appid |

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

| 错误码 | 错误说明                                                                             |
| ------ | ------------------------------------------------------------------------------------ |
| 89007  | 小程序本月被关联的名额已用完                                                         |
| 89008  | 小程序为海外帐号，不允许关联                                                         |
| 89009  | 小程序关联达到上限                                                                   |
| 89010  | 已经发送关联邀请                                                                     |
| 89011  | 在附近中展示的小程序不能取消关联                                                     |
| 89012  | 门店、小店小程序不能取消关联                                                         |
| 89013  | 小程序被封禁                                                                         |
| 89015  | 已经关联该小程序                                                                     |
| 89016  | 公众号本月关联相同主体达到上限                                                       |
| 89017  | 公众号本月关联不同主体达到上限                                                       |
| 89035  | 已经从公众平台后台发起关联申请，处于小程序管理员确认中，无法从第三方重复发起关联申请 |