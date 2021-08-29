#!/bin/bash

function hello() {
    echo "Hello $1"
}

hello Pavel

function hello_all() {
    for NAME in "$@"; do
      echo "Hello ${NAME}"
    done
}

hello_all Sveta Galya Yura Pavel
