#!/bin/bash

id=$(ps -ef | grep '[w]aybar -c' | grep power | awk '{print $2}')

case $1 in
    lock) kill $id; hyprlock ;;
esac
