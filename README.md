# AH-APP

This repository contains the hello-app.

## Description

The app returns `hello world!` for GET requests on `/hello`.

## CI/CD

### Dependencies

Upon pushes to the `main` branch, Github workflows are run to do the following:
* build the app and the container image
* publish the container image to ECR
* deploy the new version by updating the image tag on https://github.com/arnaud-mey/ah-argo


