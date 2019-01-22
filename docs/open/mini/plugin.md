# 小程序插件管理权限集

插件管理权限集用于第三方代小程序管理插件，具体包括：添加插件、查询已添加的插件、删除插件、快速更新插件版本。具体接口列表如下：

1. 申请使用插件
2. 查询已添加的插件
3. 删除已添加的插件
4. 快速更新插件版本号

## 1.申请使用插件接口

此接口用于小程序向插件开发者发起使用插件的申请。

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/wxa/plugin?access_token=TOKEN

POST 数据示例

```json
{
  "action": "apply",
  "plugin_appid": "aaaa"
}
```

参数说明

| 参数         | 说明       |
| ------------ | ---------- |
| action       | 填写 apply |
| plugin_appid | 插件 appid |

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

| 错误码 | 说明                         |
| ------ | ---------------------------- |
| 0      | 成功                         |
| -1     | 系统错误                     |
| 89236  | 该插件不能申请               |
| 89237  | 已经添加该插件               |
| 89238  | 申请或使用的插件已经达到上限 |
| 89239  | 该插件不存在                 |

## 2. 查询已添加的插件

此接口用于查询小程序目前已添加的插件（包括确认中、已通过、已拒绝、已超时状态）

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/wxa/plugin?access_token=TOKEN

POST 数据示例：

```json
{
  "action": "list"
}
```

参数说明

| 参数   | 说明      |
| ------ | --------- |
| action | 填写 list |

返回说明（正常时返回的 json 示例）

```json
{
"errcode":0,
"errmsg":"ok",
"plugin_list":
[
"appid":"aaaa",
"status":1,
"nickname":"插件昵称",
"headimgurl":"http://plugin.qq.com",
],
}
```

参数说明

| 参数        | 说明                                                     |
| ----------- | -------------------------------------------------------- |
| errcode     | 错误码                                                   |
| errmsg      | 错误信息                                                 |
| plugin_list | 申请或使用中的插件列表                                   |
| appid       | 插件 appid                                               |
| status      | 插件状态（1：申请中，2：申请通过，3：被拒绝；4：已超时） |
| nickname    | 插件昵称                                                 |
| headimgurl  | 插件头像                                                 |

错误码说明

| 错误码 | 说明     |
| ------ | -------- |
| 0      | 成功     |
| -1     | 系统错误 |

## 3. 删除已添加的插件

此接口用户小程序删除当前已添加的插件（包括已通过和已拒绝）

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/wxa/plugin?access_token=TOKEN

POST 数据示例

```json
{
  "action": "unbind",
  "plugin_appid": "aaaa"
}
```

参数说明

| 参数         | 说明       |
| ------------ | ---------- |
| action       | 填写 list  |
| plugin_appid | 插件 appid |

返回说明（正常时返回的 json 示例）

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

错误码说明

| 错误码 | 说明                           |
| ------ | ------------------------------ |
| 0      | 成功                           |
| -1     | 系统错误                       |
| 89243  | 该申请为“待确认”状态，不可删除 |
| 89244  | 不存在该插件 appid             |

## 4. 快速更新插件版本

此接口用于快速更新插件的版本号，小程序不需要修改代码、不需要重新提交版本审核，即可快速更新当前小程序正在使用的插件版本号。

请求方式: POST（请使用 https 协议）

https://api.weixin.qq.com/wxa/plugin?access_token=TOKEN

POST 数据示例

```json
{
  "action": "update",
  "user_version": "2.2.46",
  "plugin_appid": "wx5514af450eaceec2"
}
```

参数说明

| 参数         | 说明                                     |
| ------------ | ---------------------------------------- |
| TOKEN        | 接口调用凭证                             |
| action       | 此接口下填写 "update"                    |
| plugin_appid | 插件 appid                               |
| user_version | 升级至版本号，要求此插件版本支持快速更新 |

返回说明（正常时返回的 json 示例）

```json
{
  "errcode": 0,
  "errmsg": "ok"
}
```

错误码说明

| 错误码 | 说明                                                 |
| ------ | ---------------------------------------------------- |
| 0      | 成功                                                 |
| -1     | 系统错误                                             |
| 89256  | token 信息有误                                       |
| 89257  | 该插件版本不支持快速更新                             |
| 89258  | 当前小程序帐号存在灰度发布中的版本，不可操作快速更新 |