#!/bin/python3
from test_runner import run_tests, Check_Types

test_cases = [
  ('alias ls_alias=/bin/ls\nalias',),
  ('alias ls_alias=/bin/ls\nalias ls_alias_alias=ls_alias\nls_alias_alias',),
  ('alias alias1=/bin/ls alias2=/bin/echo alias3=/bin/pwd\nalias',),
  ('alias alias1=/bin/ls\nalias alias2=/bin/echo\nalias alias3=/bin/pwd\nalias alias1 alias3',),
  ('alias alias1=ls alias2 alias3=echo',),
	('alias ls_alias=/bin/ls\nls_alias',),
	('alias alias1=/bin/ls alias1=/bin/echo alias1=/bin/pwd\nalias',),
	('alias TEST_OVERWRITE=b\nalias TEST_OVERWRITE=hbtn\nalias',),
]

run_tests(test_cases, Check_Types.Manual)
