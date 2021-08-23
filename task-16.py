#!/bin/python3
from test_runner import run_tests

test_cases = [
  'echo Hello && echo World\n',
  'ls main.h\n',
  "ls '*.h'\n"
]

run_tests(test_cases)
