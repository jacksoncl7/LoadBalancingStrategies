# LoadBalancingStrategies
Testing load balancer algorithms with non-statically response apps

# Build webapp

```shell
    docker build webapp -t load-balance-strategies:x.x.x
```

# Running webapp

After building the docker image (before step)
```shel
    docker run -it -p 8080:8080 load-balance-strategies:x.x.x
```

checking response
```shell
 curl localhots:8080 # its respond a random number
```

yes, the "webapp" is running on 8080
