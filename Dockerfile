FROM debian:9.5-slim

LABEL "com.github.actions.name"="Flic Triggered Action"
LABEL "com.github.actions.description"="Easily trigger GitHub Actions by clicking a Flic button."
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/grust101/flic_triggered_action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Grust101 <grust101@github.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
