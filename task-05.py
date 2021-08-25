#!/bin/python3
from test_runner import run_tests

test_cases = [
  ('exit',),
  ('"exit"',),
  ("'exit'",),
  ("'e'xi't'")
]

run_tests(test_cases)
