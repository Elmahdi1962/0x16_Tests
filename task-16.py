#!/bin/python3
from test_runner import run_tests, Check_Types

test_cases = [
  # Tuples folow this format:
  #   (input_command, output_text, return_code)
  (
    'echo -e "\e[31mCool |\e[0m"\n',
    'Cool |\n',
    0
  ),
  (
    'ls main.h\n',
    'main.h',
    0
  )
]

run_tests(test_cases)
