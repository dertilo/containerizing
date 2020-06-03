### dockerizing

#### SWARM
took ip after `inet` with displayed by `ifconfig`

    docker swarm init -advertise-addr 192.168.178.42

on gunther
    Swarm initialized: current node (jkwtnvk2dx0c5i1v0ndmkjwo2) is now a manager.

To add a worker to this swarm, run the following command:
    
`docker swarm join --token SWMTKN-1-5s1ysd04qouaopf4hv8aj2708l2c0u7eo67wt68qunfn6pl2m0-2c0tiyt6jkw59pnuy7gnrqnwo 10.1.0.41:2377`
    

To add a manager to this swarm, run 'docker swarm join-token manager' and follow the instructions.

lay service dormant: `docker service scale [servicename]=0`


### install [docker machine](https://docs.docker.com/machine/install-machine/) TODO(tilo): no idea what this is good for

    base=https://github.com/docker/machine/releases/download/v0.16.0 &&
      curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
      sudo mv /tmp/docker-machine /usr/local/bin/docker-machine &&
      chmod +x /usr/local/bin/docker-machine
      
      
     docker-machine version
