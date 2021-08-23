#!/bin/python3
from test_runner import run_tests, Check_Types

test_cases = [
  (
    'cd ./0x16_Tests',
    '',
    Check_Types.Success,
    0
  ),
  (
    'cd ..',
    '',
    Check_Types.Success,
    0
  ),
  (
    'cd /tmp',
    '',
    Check_Types.Success,
    0
  ),
  (
    'cd -',
    '',# change this depends on your path 
    Check_Types.Success,
    0
  ),
  (
    'cd ~',
    '',
    Check_Types.Success,
    0
  )
]

run_tests(test_cases)
