#!/bin/bash -e
VERSION=`cat VERSION`
TAG="shippableimages/ubuntu1404_python:$VERSION"
echo "Building $TAG"
docker build --rm -t $TAG .
