GET {{host}}/document/1
[BasicAuth]
alice:pass

HTTP 200
{"id":1,"content":"Alice Document 1","owner":"alice"}

GET {{host}}/document/2
[BasicAuth]
alice:pass

HTTP 403

GET {{host}}/document/2
[BasicAuth]
bob:pass

HTTP 200
{"id":2,"content":"Bob Document 1","owner":"bob"}
