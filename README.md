# Utils and handy Command Lines for `syft` and `grype`

## Collect docker image identifier

Collect everything the looks like a docker image, e.g. in a `docker-compose.yml`, a puppet file or something. This is useful to write them all into a file, which in turn can be passed line by line to `syft` or `grype`.
