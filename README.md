

```
curl http://127.0.0.1:8585/api/hello -i        
% Total    % Received % Xferd  Average Speed  Time    Time    Time   Current
                               Dload  Upload  Total   Spent   Left   Speed
100     89   0     89   0      0    480      0                              0
HTTP/1.1 200 OK
Content-Type: application/json
Matched-Stub-Id: 65f83a26-ea1b-49da-8ad0-b8e6c0af50e1
Transfer-Encoding: chunked

{
"code": 0,
"message": "success",
"data": {
"name": "wiremock",
"version": "3.x"
}
}%   
```



```
curl http://127.0.0.1:8585/page -i
% Total    % Received % Xferd  Average Speed  Time    Time    Time   Current
                               Dload  Upload  Total   Spent   Left   Speed
100    157   0    157   0      0    866      0                              0
HTTP/1.1 200 OK
Content-Type: text/html; charset=UTF-8
Matched-Stub-Id: cc293c2f-7917-43d5-ad71-d58b70d49a3c
Transfer-Encoding: chunked

<!DOCTYPE html>
<html>
<head>
  <title>WireMock Page</title>
</head>
<body>
  <h1>Hello WireMock</h1>
  <p>This is static html page</p>
</body>
</html>%  
```