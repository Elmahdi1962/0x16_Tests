#!/bin/python3
from test_runner import run_tests

test_cases = [
  ('exit foo\n',),
  ('exit 124\n',),
  ('exit 2345667\n',),
  ('exit 256\n',),
  ('exit 258\n',),
  ('exit 22 bar\n',),
  ('exit bar 35\n',),
  ('"exit" 27\n',),
  ("'exit' 27\n",),
  ("'exit ' 27\n",),
  ("'exit;' 27\n",),
  ("exit ++123"),
  ("exit +123"),
  ("exit 0000000000000000"),
  ("exit 12399999999999"),
  ("exit --20"),
  ("exit -34"),
  ("exit -0")
]

run_tests(test_cases)
