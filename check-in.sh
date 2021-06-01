#!/usr/bin/env bash

git add . && \
  echo \"Enter your commit message =>\" && \
  read && \
  git commit -m \"$REPLY :construction_worker: :octocat: :four_leaf_clover: :pray:\" && \
  git push origin master
