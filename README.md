# Attic for docker

This is a lightweight image for running [attic](https://attic-backup.org/). This image is based on the lightweight [Alpine Linux](https://alpinelinux.org/).

## Usage

### Initialize a repository
```
docker run -v /var/repository/location:/repository bwaldher/attic attic init /repository
```

### Create a backup
```
docker run -v /var/repository/location:/repository \
           -v /var/directory/to/be/backed/up:/backup bwaldher/attic attic create /repository::`date -Iseconds` /backup
```

### Extract a backup
```
docker run -v /var/repository/location:/repository \
           -v /var/destination:/destination bwaldher/attic attic extract /repository::2016-02-19T16:44:10+00:00 /destination
```

## Notes

### Unknown repositories

If you run into issues with unknown repositories, rather than use `ATTIC_UNKNOWN_UNENCRYPTED_REPO_ACCESS_IS_OK` it's recommended that you add `-v /var/attic:/root/.attic` to preserve attic's cache of repositories.
