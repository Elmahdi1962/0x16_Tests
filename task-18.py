#!/bin/python3
from test_runner import run_tests

test_cases = [
  ('echo $HOME',),
  ('ls /usr/main-- ; echo $?;\n',),
  ('cat $ ./ || echo $?',),
  ('setenv me whoami; $me',),
]

run_tests(test_cases)
