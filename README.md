# LoadBalancingStrategies
Testing load balancer algorithms with non-statically response apps

# Running Load Balancer

1 - Build webapp docker image
2 - Run `make up-<<load-balancing-algorithm>>`
3 - Scale the webapp service

Example:
```shell
$> docker build webapp -t load-balance-strategies:x.x.x // Build webapp image
$> make up-least-conn // Run Nginx and 1 instance of webapp
$> docker compose up --scale webapp=N // relaunching services, one balancer but with N webapp instances
```

# Build webapp

```shell
$> docker build webapp -t load-balance-strategies:x.x.x
```

# Running webapp

After building the docker image (before step)
```shell
$> docker run -it -p 8080:8080 load-balance-strategies:x.x.x
```

checking response
```shell
$> curl localhots:8080 # its respond a random number
```
