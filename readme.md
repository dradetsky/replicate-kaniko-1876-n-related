Replication of kaniko #1876 and related issues
==============================================

https://github.com/GoogleContainerTools/kaniko/issues/1876

TODO: note other issues here

Usage
-----

```
./scripts/build.sh
./scripts/show.sh
```

Results
-------

I'll probably forget to update these, so you should probably rerun yourself to
be sure. But sticking this here for ease of seeing-whats-going-on:

```
SHOW local
total 8
-rw-r--r-- 1 1000 1000 11 Aug 24 16:47 example.conf
-rwxr-xr-x 1 1000 1000 50 Aug 24 16:49 fake-exe
SHOW docker
total 8
-rw-r--r--    1 root     root            11 Aug 24 23:47 example.conf
-rwxr-xr-x    1 root     root            50 Aug 24 23:49 fake-exe
SHOW kaniko v1.6.0-debug
total 8
-rw-r--r--    1 1000     1000            11 Aug 25 00:20 example.conf
-rwxr-xr-x    1 1000     1000            50 Aug 25 00:20 fake-exe
SHOW kaniko v1.9.0
total 8
-rw-r--r--    1 1000     1000            11 Aug 25 00:21 example.conf
-rwxr-xr-x    1 1000     1000            50 Aug 25 00:21 fake-exe
```
