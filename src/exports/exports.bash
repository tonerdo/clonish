#!/usr/bin/env bash

function __clonish_exports {
  export | while read -r exp ; do
    ex=${exp/declare -x/export}
    echo $ex
  done
}