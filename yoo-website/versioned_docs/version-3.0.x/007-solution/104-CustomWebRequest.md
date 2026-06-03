# [文件系统] 自定义网络请求

自定义 HTTP 请求，为资源下载添加鉴权等请求头。

例如：在HTTP请求里增加账号密码等内容。

```csharp
// 设置自定义请求委托
var fileSystemParams = FileSystemParameters.CreateDefaultSandboxFileSystemParameters(remoteServices);
fileSystemParams.AddParameter(EFileSystemParameter.UnityWebRequestCreator, MyWebRequester);

public UnityWebRequest MyWebRequester(string url, string method)
{
    var request = new UnityWebRequest(url, method);
    var authorization = GetAuthorization("Admin", "12345");
    request.SetRequestHeader("AUTHORIZATION", authorization);
    return request;
}
private string GetAuthorization(string userName, string password)
{
    string auth = userName + ":" + password;
    var bytes = System.Text.Encoding.GetEncoding("ISO-8859-1").GetBytes(auth);
    return "Basic " + System.Convert.ToBase64String(bytes);
}
```
