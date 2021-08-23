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
    '/mnt/c/Users/Administrator/Desktop/alx_projects/simple_shell/0x16_Tests\n',# change this depends on your path 
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
