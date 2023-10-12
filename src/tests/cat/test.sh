#!/bin/bash

cat_s21=$(../../cat/s21_cat -v bytes)
code_s21=$?

cat_sys=$(cat -v bytes)
code_sys=$?

if [ "${cat_s21}" != "${cat_sys}" ] || [ ${code_s21} -ne ${code_sys} ]
then
  echo "Integration tests for CAT failed."
  exit 1
fi

echo "Integration tests for CAT successed."

