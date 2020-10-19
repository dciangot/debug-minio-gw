package httpapi.authz
import input

default allow = false

allow {
  input.account == "minioadmin"
}
