#!/bin/sh

GLDIR=/opt/graylog2-web

if [ ! -d $GLDIR ]; then
    echo "error: $GLDIR not exists"
    exit 1
fi

cd $GLDIR
/usr/bin/gem1.9.1 install bundler --no-rdoc --no-ri
/var/lib/gems/1.9.1/bin/bundle install --without=development


