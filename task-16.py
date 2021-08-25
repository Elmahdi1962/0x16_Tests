#!/bin/python3
from test_runner import run_tests, Check_Types

test_cases = [
  ('echo Hello && echo World',),
  ('||ls main.h',),
  ('ls &&',),
  ('ls && echo coop',),
  ('ls & &',),
]

test_cases1 = [
  ('echo Hello "&& echo World"',),
  ('|ls main.h',),
  ('& echo coop',),
]

run_tests(test_cases, show_output=True)
run_tests(test_cases1, Check_Types.Manual)
