#!/bin/bash

scp src/cat/s21_cat root@client:/usr/local/bin ||  exit 1

scp src/grep/s21_grep root@client:/usr/local/bin || exit 1

