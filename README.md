This repository accompanies my answer to <https://serverfault.com/questions/1121036/simple-dns-server-in-a-docker-container-returns-server-unknown/>.

## Overview

Build an image:

```
$ docker build -t named .
```

And then run it:

```
$ docker run --name named --rm -d named
```

Verify that it works:

```
$ docker exec named nslookup ns.main.com localhost
Server:         localhost
Address:        ::1#53

Name:   ns.main.com
Address: 127.0.0.1
```
