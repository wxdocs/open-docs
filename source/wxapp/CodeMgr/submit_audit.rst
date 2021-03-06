5. 提交审核
==================================================================================

请求方式: POST（请使用https协议）

https://api.weixin.qq.com/wxa/submit_audit?access_token=TOKEN
POST数据示例:

{
    "item_list": [
    {
        "address":"index",
        "tag":"学习 生活",
        "first_class": "文娱",
        "second_class": "资讯",
        "first_id":1,
        "second_id":2,
        "title": "首页"
    }
    {
        "address":"page/logs/logs",
        "tag":"学习 工作",
        "first_class": "教育",
        "second_class": "学历教育",
        "third_class": "高等",
        "first_id":3,
        "second_id":4,
        "third_id":5,
        "title": "日志"
    }
    ],
        "feedback_info": "blablabla",
        "feedback_stuff": "xx|yy|zz"
}
参数说明

参数	说明
access_token	请使用第三方平台获取到的该小程序授权的authorizer_access_token
item_list	提交审核项的一个列表（至少填写1项，至多填写5项）
address	小程序的页面，可通过“获取小程序的第三方提交代码的页面配置”接口获得
tag	小程序的标签，多个标签用空格分隔，标签不能多于10个，标签长度不超过20
first_class	一级类目名称，可通过“获取授权小程序帐号的可选类目”接口获得
second_class	二级类目(同上)
third_class	三级类目(同上)
first_id	一级类目的ID，可通过“获取授权小程序帐号的可选类目”接口获得
second_id	二级类目的ID(同上)
third_id	三级类目的ID(同上)
title	小程序页面的标题,标题长度不超过32
feedback_info	反馈内容，不超过200字
feedback_stuff	图片media_id列表，中间用“丨”分割，xx丨yy丨zz，不超过5张图片, 其中 media_id 可以通过新增临时素材接口上传而得到
注意：只有上个版本被驳回，才能使用“feedback_info”、“feedback_stuff”这两个字段，否则忽略处理。

返回说明（正常时返回的json示例）：


{
"errcode":0,
"errmsg":"ok",
"auditid":1234567
}
返回参数说明：

参数	说明
auditid	审核编号
错误码说明：

返回码	说明
-1	系统繁忙
86000	不是由第三方代小程序进行调用
86001	不存在第三方的已经提交的代码
85006	标签格式错误
85007	页面路径错误
85008	类目填写错误
85009	已经有正在审核的版本
85010	item_list有项目为空
85011	标题填写错误
85023	审核列表填写的项目数不在1-5以内
85077	小程序类目信息失效（类目中含有官方下架的类目，请重新选择类目）
86002	小程序还未设置昵称、头像、简介。请先设置完后再重新提交
85085	近7天提交审核的小程序数量过多，请耐心等待审核完毕后再次提交
85086	提交代码审核之前需提前上传代码
85087	小程序已使用api navigateToMiniProgram，请声明跳转appid列表后再次提交
注意：需要先提交体验版后再提交代码包审核。
