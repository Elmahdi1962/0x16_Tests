#!/bin/python3
from test_runner import run_tests, Check_Types

test_cases = [
  ('help', 0),
  ('help alias', 0),
  ('help cd', 0),
  ('help env', 0),
  ('help exit', 0),
  ('help help', 0),
  ('help history', 0),
  ('help setenv', 0),
  ('help unsetenv', 0),
  ('help foobar', 1),
  ('help cd alias', 1),
]

run_tests(test_cases, test_type=Check_Types.Manual)
