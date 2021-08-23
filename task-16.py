#!/bin/python3
from test_runner import run_tests


test_cases = [
  (
    'echo Hello && echo World\n',
    '',
    Check_Types.Success,
    0
  ),
  (
    'ls main.h\n',
    '',
    Check_Types.Success,
    0
  ),
  (
    'ls '*.h'\n',
    '',
    Check_Types.Success,
    0
  )
]

run_tests(test_cases)
