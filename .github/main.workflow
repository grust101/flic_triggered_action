workflow "Handle inbound event" {
  on = "repository_dispatch"
  resolves = ["Send Push Notification"]
}

action "Send Push Notification" {
  uses = "techulus/push-github-action@0.0.1"
  secrets = ["API_KEY", "MESSAGE"]
}
