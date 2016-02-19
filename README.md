# Attic for docker

This is a lightweight image for running [attic](https://attic-backup.org/). This image is based on the lightweight [Alpine Linux](https://alpinelinux.org/).

## Usage

### Initialize a repository
```
docker run -v /var/repository/location:/repository waldher/attic attic init /repository
```

### Create a backup
```
docker run -v /var/repository/location:/repository \
           -v /var/directory/to/be/backed/up:/backup waldher/attic attic create /repository::`date -Iseconds` /backup
```

### Extract a backup
```
docker run -v /var/repository/location:/repository \
           -v /var/destination:/destination waldher/attic attic extract /repository::2016-02-19T16:44:10+00:00 /destination
```
