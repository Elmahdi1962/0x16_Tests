#!/bin/python3
import os, enum, re, sys, time, subprocess
from subprocess import Popen, PIPE, signal as sig

class Check_Types(enum.Enum):
  '''
  Represents a set of test types that could be performed
  '''
  # Compares output of your shell with the output from
  # the base shell
  Equality = 1
  # Performs a predefined comparison of test cases.
  # The output's return value should be provided as the second (index 1) item in the tuple
  # and the exit code should be provided as the third (index 2) item in the tuple
  Comparison = 2
  # Choose this if you want to perform a manual review of your shell's output
  Manual = 3

# The name of the shell program in your project's directory or folder
shell_file_name = "./simple_shell"
base_shell_path='/bin/sh'
# The relative path from this file's directory to your project directory
project_dir = '../'
# The relative path from your project directory to the tests directory
# The tests directory should contain this file
tests_dir = '0x16_Tests'

def run_tests(test_cases, show_output=False, test_type=Check_Types.Equality):
  '''
  Runs tests for a list of test cases

  Parameters:
  test_cases (list): A list of
  '''
  os.environ['PS1'] = '$'
  old_pwd = os.getcwd()
  tests_failed = 0
  all_checks_passed = True
  os.chdir(project_dir)
  new_pd = os.getcwd()
  new_envp = get_env_vars(old_pwd, new_pd)
  for i in range(len(test_cases)):
    print("\n{}Testing : [ {} ]\n".format(">" * 6, test_cases[i][0]))
    if (ord(test_cases[i][0][-1]) == 10):
      res1 = run_simple_shell_proc(test_cases[i][0], new_envp)
      if test_type == Check_Types.Equality:
        res2 = run_base_shell_proc(test_cases[i][0], new_envp)
      elif test_type == Check_Types.Comparison:
        res2 = (test_cases[i][1], test_cases[i][2], res1[2])
      else:
        res2 = (res1[0], res1[1], res1[2])
    else:
      res1 = run_simple_shell_proc("{}\n".format(test_cases[i][0]), new_envp)
      if test_type == Check_Types.Equality:
        res2 = run_base_shell_proc("{}\n".format(test_cases[i][0]), new_envp)
      elif test_type == Check_Types.Comparison:
        res2 = (test_cases[i][1], test_cases[i][2], res1[2])
      else:
        res2 = (res1[0], res1[1], res1[2])
    output = res1[0]
    output_ret_code = res1[1]
    output_pid = res1[2]
    expected = res2[0]
    expected_ret_code = res2[1]
    expected_pid = res2[2]
    if expected.startswith("{}:".format(base_shell_path)):
      expected = "{}{}".format(shell_file_name, expected[len(base_shell_path):])
    if (test_type == Check_Types.Equality or test_type == Check_Types.Comparison) and ((not str_eql(output, expected)) or (output_ret_code != expected_ret_code)):
      print_result(False, output, output_ret_code, output_pid)
      print_result(True, expected, expected_ret_code, expected_pid)
      all_checks_passed = False
    elif show_output or (test_type == Check_Types.Manual):
      print_result(False, output, output_ret_code, output_pid)
      if test_type != Check_Types.Manual:
        print_result(True, expected, expected_ret_code, expected_pid)
  if all_checks_passed:
    if test_type != Check_Types.Manual:
      print("\033[97;42m Congratulations: \033[0m All checks passed")
  else:
    print("\033[97;41m Pbatenghyngvbaf: \033[0m Some checks are failing")
  os.chdir(tests_dir)

def run_simple_shell_proc(command_str, new_envp):
  '''
  Runs a command in the simple shell (your own awesome shell)

  Parameters:
  command_str (str): The command to run
  new_envp (str): The environment variable
  '''
  output = ''
  output_ret_code = 0
  output_pid = 0
  # Feed the output from put into the exporting processes
  in_p1 = Popen(['./0x16_Tests/put', command_str], stdout=PIPE, stderr=PIPE)
  # send the contents of the pipe into the shell program
  rec_p1 = Popen([shell_file_name], stdin=in_p1.stdout, stdout=PIPE, stderr=subprocess.STDOUT, env=new_envp)
  in_p1.stdout.close()  # Allow in_p1 to receive a SIGPIPE if rec_p1 exits.
  output = rec_p1.communicate()[0].decode('ascii')
  output_ret_code = rec_p1.returncode
  output_pid = rec_p1.pid
  in_p1.kill()
  rec_p1.kill()
  return (output, output_ret_code, output_pid)

def print_result(is_expected, result, res_stat_code, res_pid):
  title = "Got"
  if is_expected:
    title = "Expected"
  print("{}:\n{}\n{} [Chars: {}, Exit Status: {}: PID: {}] {}".format(title,
        result, "-" * 5, len(result), res_stat_code, res_pid, "-" * 5))

def run_base_shell_proc(command_str, new_envp):
  '''
  Runs a command in the base shell

  Parameters:
  command_str (str): The command to run
  new_envp (str): The environment variable
  '''
  expected = ''
  expected_ret_code = 0
  expected_pid = 0
  rc = 0
  in_p2 = Popen(['./0x16_Tests/put', command_str], stdout=PIPE)
  rec_p2 = Popen([base_shell_path], stdin=in_p2.stdout, stdout=PIPE, stderr=subprocess.STDOUT, env=new_envp)
  in_p2.stdout.close()
  expected = rec_p2.communicate()[0].decode('ascii')
  expected_ret_code = rec_p2.returncode
  expected_pid = rec_p2.pid
  in_p2.kill()
  rec_p2.kill()
  return (expected, expected_ret_code, expected_pid)

def ctrl_c_test():
  '''
  Checks for the shell's handling of Ctrl-C
  '''
  old_pwd = os.getcwd()
  os.chdir(project_dir)
  new_pd = os.getcwd()
  new_envp = get_env_vars(old_pwd, new_pd)
  p1 = Popen([shell_file_name], env=new_envp)
  time.sleep(5)
  p1.send_signal(sig.SIGINT)
  if p1.poll() is None:
    p1.kill()
    print("\033[97;42m Congratulations: \033[0m All checks passed")
  else:
    print("\033[97;41m Pbatenghyngvbaf: \033[0m \033[31mCtrl+C wasn't handled\033[0m")
  os.chdir(tests_dir)

def betty_checks():
  '''
  Checks for Betty issues in all .c and .h files of the
  current working (project) directory.
  '''
  old_pwd = os.getcwd()
  os.chdir(project_dir)
  new_pd = os.getcwd()
  new_envp = get_env_vars(old_pwd, new_pd)
  files = get_files(os.curdir)
  all_checks_passed = True
  for i in range(len(files)):
    p1 = Popen(['./0x16_Tests/put', files[i]], stdout=PIPE)
    p2 = Popen(['betty', files[i]], stdin=p1.stdout, stdout=PIPE, env=new_envp)
    p1.stdout.close()  # Allow p1 to receive a SIGPIPE if p2 exits.
    output = (p2.communicate()[0]).decode('ascii')
    output_lines = output.splitlines()
    file_descr = output_lines[1]
    file_descr_printed = False
    errors = 0
    warnings = 0
    for out_line in output_lines:
      if out_line.lower().count("ERROR: ".lower()) > 0:
        if not file_descr_printed:
          print(file_descr)
          file_descr_printed = True
        print(out_line)
        errors += 1
      elif out_line.lower().count("WARNING: ".lower()):
        if not file_descr_printed:
          print(file_descr)
          file_descr_printed = True
        print(out_line)
        warnings += 1
    if errors > 0 or warnings > 0:
      print("total: \033[31m{} errors\033[0m, \033[33m{} warnings\033[0m, {} lines checked\n".format(errors, warnings, len(output_lines)))
      all_checks_passed = False
  if all_checks_passed:
    print("\033[97;42m Congratulations: \033[0m All checks passed")
  os.chdir(tests_dir)

def get_files(folder):
  '''
  Retrieves the .c and .h files in a given folder

  Parameters:
  folder (str): The path to the folder

  Returns:
  A list of .c and .h files, otherwise an empty list
  '''
  files_lst = []
  if os.path.isdir(folder):
    for file in os.listdir(folder):
      if re.fullmatch("^.*\.(c|h)$", file):
        files_lst.append(file)
  return files_lst

def check_function_usage(func_name):
  '''
  Checks for the presence of a function in all project files

  Parameters:
  func_name (str): The name of the function
  '''
  os.chdir(project_dir)
  used_function = False
  for project_file in get_files(os.curdir):
    usage_count = 0
    i = 0
    file_name_printed = False
    res_path = os.path.join(os.getcwd(), project_file)
    if os.path.exists(res_path):
      with open(res_path, 'r') as project_file_io:
        lines = project_file_io.readlines()
        for line in lines:
          i += 1
          if line.find(func_name, 0, len(line) - 1) >= 0:
            usage_count += 1
            if not file_name_printed:
              print("{} {} {}".format("=" * 10, project_file, "=" * 10))
              file_name_printed = True
            print("\033[31m{}:{}: ERROR:\033[0m Do not use '{}'".format(project_file, i, func_name))
      if usage_count > 0:
        print("Total: \033[31m{} errors\033[0m, {} lines checked\n".format(usage_count, i))
        used_function = True

  if not used_function:
    print("\033[97;42m Congratulations: \033[0m All checks passed")
  os.chdir(tests_dir)

def get_env_vars(old_pwd, cwd):
  '''
  Creates a modified version of the current environment variables

  Parameters:
  old_pwd (str): The previous current working directory
  pwd (str): The current working directory
  '''
  new_env = os.environ.copy()
  new_env.pop("PS1")
  # new_env.setdefault("PS1", "$ ")
  new_env["PS1"] = "$ "
  new_env["PWD"] = cwd
  new_env["OLDPWD"] = old_pwd
  return new_env

def str_eql(str1, str2):
  '''
  Checks if two strings are equal

  Parameters:
  str1 (str): The first string
  str2 (str): The second string
  '''
  if len(str1) != len(str2):
    return False
  for c1, c2 in zip(str1, str2):
    if (c1 != c2):
      return False
  return True
