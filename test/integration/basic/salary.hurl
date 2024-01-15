GET {{host}}/salary/bob
[BasicAuth]
alice:pass

HTTP 200
{"id":2,"username":"bob","amount":800.0}

# John has HR role
GET {{host}}/salary/bob
[BasicAuth]
john:pass

HTTP 200
{"id":2,"username":"bob","amount":800.0}

GET {{host}}/salary/john
[BasicAuth]
bob:pass

HTTP 403
