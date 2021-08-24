#!/bin/python3
from test_runner import run_tests, Check_Types

test_cases = [
  ('echo $HOME',),
  ('ls /usr/main-- ; echo $?;\n',),
  ('cat $ ./ || echo $?',),
  ('setenv me whoami; $me',),
]

test_cases1 = [
  ('echo $$',),
  ('echo $$ && echo $?',),
]

# run_tests(test_cases)
run_tests(test_cases1, show_output=True, test_type=Check_Types.Manual)
