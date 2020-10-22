#!/bin/bash -e
# cd `dirname $0`
#cd ../..
# docker login

mkdir -p ~/cache
cache_dir=~/cache

if [ -e $cache_dir/amazonlinux-base.tar ]; then
	docker load -i $cache_dir/amazonlinux-base.tar
else
	docker build -t amazonlinux-base ./
	docker run --rm -d --privileged --name amazonlinux-base amazonlinux-base
	docker exec amazonlinux-base sh -c 'rm -fr /usr/local/src/* && yum clean all'
	docker commit amazonlinux-base amazonlinux-base
	docker stop amazonlinux-base
	docker save amazonlinux-base -o $cache_dir/amazonlinux-base.tar
fi
