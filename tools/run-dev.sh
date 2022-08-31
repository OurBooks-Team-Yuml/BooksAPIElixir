#!/bin/sh

cd ./app

mix deps.get

mix run --no-halt
