#!/bin/python3
from test_runner import run_tests, Check_Types

test_cases = [
  ('history',),
  ('"history"',),
  ("'history'",),
  ('history 34',),
]

run_tests(test_cases, test_type=Check_Types.Manual)
