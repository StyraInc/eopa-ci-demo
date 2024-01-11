GET http://127.0.0.1:8080/salary/bob
[BasicAuth]
alice:pass

HTTP 200
{"id":2,"username":"bob","amount":800.0}

# John has HR role
GET http://127.0.0.1:8080/salary/bob
[BasicAuth]
john:pass

HTTP 200
{"id":2,"username":"bob","amount":800.0}

GET http://127.0.0.1:8080/salary/john
[BasicAuth]
bob:pass

HTTP 403
