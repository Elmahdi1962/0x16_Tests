#!/bin/python3
from test_runner import run_tests

test_cases = [
  ('; echo foo',),
  ('echo HOME;',),
  ('echo HOME; ;',),
  ("ls ;56",),
  ("ls ';56'",),
  ("ls /sdfdf; ls /usr; ls /.3455; ls /usr/games",),
]

run_tests(test_cases, show_output=True)
