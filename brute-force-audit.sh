#!/bin/bash 
#script to brute force the annotation called audit to false on the cool-app namespace
$COUNTER=50

until [ $COUNTER -lt 1 ]; do
kubectl annotate namespace cool-app audit=false --overwrite
let COUNTER-=1
done