# Configuration

* vim run.sh

```
#!/bin/bash

/usr/bin/turnserver -v -r IP_Public:2222 -a -b /var/lib/turn/turndb -c /etc/turnserver.conf
```

* vim data/turnserver.conf
user: user 
password: 834610100

```
user=user:834610100
listening-port=2222
listening-ip=IP_Public
min-port=49152
max-port=65535
cli-password=834610100
```
# Build
```
docker build -t turnserver:1.0 -f Dockerfile .
```

# Deploy
```
docker-compose up -d
```

# View logs
```
docker logs turnserver -f -n100
```
