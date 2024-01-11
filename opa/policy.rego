package authz

import rego.v1

default allow := false

allow if {
  input.action == "read"
  input.resource.type == "salary"
  "ROLE_HR" in input.subject.authorities
}

allow if {
  input.action == "read"
  input.resource.type == "salary"
  input.resource.user in users_access[input.subject.name]
}

allow if {
  input.action == "read"
  input.resource.type == "document"
  input.resource.owner == input.subject.name
}

users_graph[data.users[username].name] := edges if {
  edges := data.users[username].subordinates
}

users_access[username] := access if {
  users_graph[username]
  access := graph.reachable(users_graph, {username})
}
