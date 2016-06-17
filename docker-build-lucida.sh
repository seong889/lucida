#!/bin/sh

## setting lucida dependency
cp Dockerfile.depend Dockerfile
sudo nvidia-docker build -t lucida:depend .

## git clone lucida denpendency library
cp Dockerfile.clone Dockerfile
sudo nvidia-docker build -t lucida:clone .

## install lucida
cp Dockerfile.install Dockerfile
sudo nvidia-docker build -t lucida:install .

## download wiki data
cp Dockerfile.latest Dockerfile
sudo nvidia-docker build -t lucida:latest .
