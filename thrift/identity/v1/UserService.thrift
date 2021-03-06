namespace js com.identity.v1

struct User {
  1: required i32 id
  2: required string firstName
  3: required string lastName
  4: optional string email
}

exception UserServiceException {
  1: required string message
}

service UserService {
  User getUser(1: i32 id) throws (1: UserServiceException exp)
}