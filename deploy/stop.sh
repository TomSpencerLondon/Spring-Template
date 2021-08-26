#!/bin/bash

web_app=/etc/init.d/web-app
if [ -L $web_app ]; then
  $web_app stop
fi