#!/bin/bash

for filenum in "$@"
do
    cat "$filenum"
done