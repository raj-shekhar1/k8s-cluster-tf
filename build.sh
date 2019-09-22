#!/usr/bin/env bash

cd raj-shekhar1/k8s-cluster-tf
#bundle install
#bundle exec jekyll build
cd -

./terraform-linux init
#./terraform-linux validate website

if [[ $TRAVIS_BRANCH == 'master' ]]
then
   # ./terraform-linux workspace select prod
    ./terraform-linux apply -auto-approve
fi