#!/bin/bash

grep_s21=$( ../../grep/s21_grep -i -e tiger tiger )
code_s21=$?

grep_sys=$( grep -i -e tiger tiger )
code_sys=$?

if [ "${grep_s21}" != "${grep_sys}" ] || [ ${code_s21} -ne ${code_sys} ]
then
  echo "Integration tests for GREP failed."
  exit 1
fi

echo "Integration tests for GREP successed."

