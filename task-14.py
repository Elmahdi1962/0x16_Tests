#!/bin/python3
from test_runner import run_tests

test_cases = [
  ('cd ./0x16_Tests',),
  ('cd ..',),
  ('cd /tmp',),
  ('cd "/tmp"',),
  ('cd -',),
  ('cd ~',),
  ('cd $HOME',),
  ('cd ./0x16_Tests/task-14.py',),
  ('cd .git',),
  ('cd',),
  ('cd ./././.. -',),
  ('cd 225566Foobar',),
  ('cd ./0x16_Tests ../',),
]

run_tests(test_cases, show_output=True)
