#!/bin/sh

function detex () {
  ssed -R -f $1 $2 > $3
}
