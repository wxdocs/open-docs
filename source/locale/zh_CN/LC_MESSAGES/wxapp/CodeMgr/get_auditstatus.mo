��    	      d               �   !   �   R   �   #   "  �   F  �   �  z  �  ,     �   A  |  �  !   h  R   �  #   �  �     �   �  z  T  ,   �	  �   �	   7. 查询某个版本审核状态 https://api.weixin.qq.com/wxa/get_auditstatus?access_token=TOKEN POST数据示例: { "auditid":1234567 } 参数说明: { "errcode":0, "errmsg","ok", "status"：1, "reason":"帐号信息不合规范", "screenshot":"xxx|yyy|zzz" } 返回参数说明： 参数      说明 access_token    请使用第三方平台获取到的该小程序授权的authorizer_access_token auditid 提交审核时获得的审核id 返回说明（正常时返回的json示例）： 参数      说明 status  审核状态，其中0为审核成功，1为审核失败，2为审核中，3已撤回 reason  当status=1，审核被拒绝时，返回的拒绝原因 screenshot      当status=1，审核被拒绝时，会返回审核失败的小程序截图示例。 xxx丨yyy丨zzz是media_id可通过获取永久素材接口 拉取截图内容） 错误码说明： 请求方式: POST（请使用https协议） 返回码     说明 -1      系统繁忙 86000   不是由第三方代小程序进行调用 86001   不存在第三方的已经提交的代码 85012   无效的审核id Project-Id-Version: wxopen-docs 
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
 7. 查询某个版本审核状态 https://api.weixin.qq.com/wxa/get_auditstatus?access_token=TOKEN POST数据示例: { "auditid":1234567 } 参数说明: { "errcode":0, "errmsg","ok", "status"：1, "reason":"帐号信息不合规范", "screenshot":"xxx|yyy|zzz" } 返回参数说明： 参数      说明 access_token    请使用第三方平台获取到的该小程序授权的authorizer_access_token auditid 提交审核时获得的审核id 返回说明（正常时返回的json示例）： 参数      说明 status  审核状态，其中0为审核成功，1为审核失败，2为审核中，3已撤回 reason  当status=1，审核被拒绝时，返回的拒绝原因 screenshot      当status=1，审核被拒绝时，会返回审核失败的小程序截图示例。 xxx丨yyy丨zzz是media_id可通过获取永久素材接口 拉取截图内容） 错误码说明： 请求方式: POST（请使用https协议） 返回码     说明 -1      系统繁忙 86000   不是由第三方代小程序进行调用 86001   不存在第三方的已经提交的代码 85012   无效的审核id 