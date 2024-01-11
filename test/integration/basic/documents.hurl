GET http://127.0.0.1:8080/document/1
[BasicAuth]
alice:pass

HTTP 200
{"id":1,"content":"Alice Document 1","owner":"alice"}

GET http://127.0.0.1:8080/document/2
[BasicAuth]
alice:pass

HTTP 403

GET http://127.0.0.1:8080/document/2
[BasicAuth]
bob:pass

HTTP 200
{"id":2,"content":"Bob Document 1","owner":"bob"}
