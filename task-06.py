#!/bin/python3
from test_runner import run_tests

test_cases = [
  ('env',),
  ('"env"',),
  ("'env'",),
]

run_tests(test_cases)
