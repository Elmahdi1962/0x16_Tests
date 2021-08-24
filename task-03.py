#!/bin/python3
from test_runner import run_tests

test_cases = [
  ('ls /var/run/sudo',),
  ('ls /usr/libexec /usr/config',),
  ('echo My shell is awe""some',),
  ('echo My shell is awe"  "some',),
]

run_tests(test_cases)
