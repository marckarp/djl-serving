#!/usr/bin/env bash
# for GitHub Action use only
arch=$1
version=$2

if [[ -z "$version" ]]; then
  image="$arch-test"
else
  if [[ "$arch" == "cpu" ]]; then
    image=$version
  else
    image="$version-$arch"
  fi
fi

echo "DJLSERVING_DOCKER_TAG=$image" >> $GITHUB_ENV
