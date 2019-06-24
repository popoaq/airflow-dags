#!/usr/bin/env bash

my_dir=`dirname $0`

${my_dir}/tunnel_web.sh &

/usr/bin/open -a "/Applications/Google Chrome.app" 'http:/localhost:8080'

