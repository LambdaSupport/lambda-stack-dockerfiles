# Hyperplane Mirror

Dockerfiles for deploying `apt-mirror` for the Lambda Hyperplane series

### Installing Docker

1) Ensure that you have docker installed. On Ubuntu 18.04 and 20.04, you can simply run `sudo apt-get install docker.io`. On Ubuntu 16.04, a different OS, or if you prefer to use upstream docker, follow [Docker's installation instructions](https://docs.docker.com/engine/install/ubuntu/)

### Building images

Build the image with the appropriate command for the distribution you wish to use.

```
sudo docker build -t apt-mirror:16.04 -f Dockerfile.xenial .
sudo docker build -t apt-mirror:18.04 -f Dockerfile.bionic .
sudo docker build -t apt-mirror:20.04 -f Dockerfile.focal .
```

### Running images

```
sudo docker run -d --restart=always --net=host -t apt-mirror:18.04 /usr/sbin/nginx
```

