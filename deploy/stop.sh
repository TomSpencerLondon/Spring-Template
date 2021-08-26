#!/bin/bash

app=/etc/init.d/springpractice
if [ -L $app ]; then
  $app stop
fi