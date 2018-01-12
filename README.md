# Tomcat Clusters in Docker

This repository demonstrates deploying tomcat clusters for stateful applications. The first application demonstrates configuring Nginx as a load balancer that maintains the same session id regardless of which server receives the request. The second application demonstrates using HAProxy to keep a session to a specific server.

## Running the demos

### Build the application container

The demonstration uses a tomcat container configured to use clustering and a Java Server Pages app that shows the sessionid an containerid. To build the tomcat container

```
cd ./tomcat
docker image build -t tomcat-cluster .
```

### Stateful demo

To run the demo:

```
docker-compose up -d
```
Go to http://localhost:8080/cluster in your browser. Refresh the browser repeatedly and you can see that the instance changes but the session in the browser remains the same.

### Sticky session demo

To run the demo:

```
docker stack deploy -c docker-stack.yml cluster
```

Go to http://localhost/cluster in your browser. Refresh the browser several time and the container instance and sessionid remain the same. Open a different browser and it will create a new session id on a different instance.