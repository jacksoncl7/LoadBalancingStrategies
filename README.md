# LoadBalancingStrategies
Testing load balancer algorithms with non-statically response apps

# Build webapp

```shell
    docker container webapp -t webapp:latest
```

# Running webapp

After building the docker image (before step)
```shel
    docker run webapp:latest
```

checking response
```shell
 curl localhots:8080 # its respond a random number
```

yes, the webapp its running on 8080
