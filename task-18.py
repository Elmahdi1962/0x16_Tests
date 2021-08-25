#!/bin/python3
from test_runner import run_tests, Check_Types

test_cases = [
  ('echo $HOME',),
  ('echo $_',),
  ('ls /usr/main-- ; echo $?;\n',),
  ('cat $ ./ || echo $?',),
]

test_cases1 = [
  ('echo $$',),
  ('echo "$$"',),
  ('echo $$ && echo $?',),
  ('setenv me whoami; echo $me',),
]

run_tests(test_cases, show_output=True)
run_tests(test_cases1, test_type=Check_Types.Manual)
