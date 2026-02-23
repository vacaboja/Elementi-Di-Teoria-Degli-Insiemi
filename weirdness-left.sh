#!/bin/bash

grep --color -P -n "[\x80-\xFF]" "$@"
