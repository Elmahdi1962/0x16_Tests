#!/bin/python3
from test_runner import run_tests, Check_Types

test_cases = [
  (
    'cd ./0x16_Tests',
  ),
  (
    'cd ..',
  ),
  (
    'cd /tmp',
  ),
  (
    'cd -',
  ),
  (
    'cd ~',
  )
]

run_tests(test_cases)
