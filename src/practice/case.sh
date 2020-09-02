#!/bin/bash

var=$1
case $var in
  'blue' )
    echo 'GO';;
  'red' )
    echo 'STOP';;
  'yellow' ) 
    echo 'WAIT';;
  *)
    echo 'WRONG COLOR'
esac

var2=$2
case $var2 in
  [a-z] )
    echo 'a-z';;
  [A-z] )
    echo 'A-Z';;
  [0-9] )
    echo '0-9';;
esac
