��          �               ,  Q   -  l        �       
        (     5     <     L     e  �  x                     -     :  |  G  Q   �  l        �     �  
   �     �     �     �     �     �  �       �     �     �     �     �   5. 获取（刷新）授权公众号或小程序的接口调用凭据（令牌） ``POST`` **https**:// api.weixin.qq.com /cgi-bin/component/api_authorizer_token?component_access_token=xxxxx authorizer_access_token authorizer_refresh_token expires_in 刷新令牌 参数 授权方令牌 有效期，为 2 小时 结果参数说明 该 API 用于在授权方令牌（authorizer_access_token）失效时， 可用刷新令牌（authorizer_refresh_token）获取新的令牌。请注意， 此处 token 是 2 小时刷新一次，开发者需要自行进行 token 的缓存， 避免 token 的获取次数达到每日的限定额度。 缓存方法可以参考：http://mp.weixin.qq.com/wiki/2/88b2bf1265a707c031e51f26ca5e6512.html 说明 请求参数说明 请求数据 请求格式 返回结果 Project-Id-Version: wxopen-docs 
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
 5. 获取（刷新）授权公众号或小程序的接口调用凭据（令牌） ``POST`` **https**:// api.weixin.qq.com /cgi-bin/component/api_authorizer_token?component_access_token=xxxxx authorizer_access_token authorizer_refresh_token expires_in 刷新令牌 参数 授权方令牌 有效期，为 2 小时 结果参数说明 该 API 用于在授权方令牌（authorizer_access_token）失效时， 可用刷新令牌（authorizer_refresh_token）获取新的令牌。请注意， 此处 token 是 2 小时刷新一次，开发者需要自行进行 token 的缓存， 避免 token 的获取次数达到每日的限定额度。 缓存方法可以参考：http://mp.weixin.qq.com/wiki/2/88b2bf1265a707c031e51f26ca5e6512.html 说明 请求参数说明 请求数据 请求格式 返回结果 