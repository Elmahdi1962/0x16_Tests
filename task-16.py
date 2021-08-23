#!/bin/python3
from test_runner import run_tests, Check_Types

test_cases = [
  (
    'echo -e "\e[31mCool |\e[0m"\n',
    '',
    Check_Types.Success,
    0
  ),
]

run_tests(test_cases)
