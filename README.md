# Utils and handy Command Lines for `syft` and `grype`

## Clone this

```bash
https://github.com/debuglevel/syft-grype-utils.git
```

## Install syft and grype

```bash
curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh -s -- -b /usr/local/bin && curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b /usr/local/bin
```

## Collect docker image identifier

Collect everything the looks like a docker image, e.g. in a `docker-compose.yml`, a puppet file or something. This is useful to write them all into a file, which in turn can be passed line by line to `syft` or `grype`.

## Search all local docker images for a log4j

```bash
./print-docker-images.sh | ./syft-each.sh | grep log4j
```

## Search a directory full of docker-compose.yml for a log4j

```bash
cat /etc/docker-compose/* | ./extract-docker-compose-images.sh | ./syft-each.sh  | grep log4j
```

## Search most interesting directories

```bash
DATE=$(date --iso-8601=minutes) DIRS="bin etc home lib lib64 opt root sbin snap srv usr var"; for dir in $DIRS; do echo syft dir:/$dir --file syft-$dir-$DATE.txt; done
```