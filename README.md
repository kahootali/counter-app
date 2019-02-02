# counter-app

Its a simple counter app which logs and increments the count from a file. Repository includes Dockerfile and respective kubernetes manifest.

The image is already pushed at `docker.io/kahootali/counter`. You can use that or build and run the app yourself using the following commands.

## Build

You can build the image by `docker build -t counter .`

## Run

You can build the image by `docker run -it counter`

## Deploy on Kubernetes

You can deploy on kubernetes using the manifests present in `kubernetes` folder. I have used Persistent Volumes so that when scaling replicas of Deployments or Statefulsets, you can easily see the difference.