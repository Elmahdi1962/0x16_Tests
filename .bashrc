#!/bin/bash
# Performing checks on the "Simple Shell" project

# The path to your shell's executable from
# this file's directory or folder
export SHELL_PATH="../simple_shell"
####################################
# Runs one or more test scripts
# Globals:
#   None
# Arguments
#   [-sh|py]: Specifies the type of script to run.
#             Default is -sh
#   -a|file|#: Specifies how the script running
#               procedure should be done.
#               -a -> Run all script files
#               file -> Run a specific script file
#                   (E.g. task-01.sh, task-12.py, etc)
#               # -> Run a script file with a given id
#                   (E.g.; 1 or 01, 12, etc)
# Returns:
#   None
ss_test()
{
  i=0
  scripts_count=0
  ext='sh'
  task=''
  if [[ "$1" == "-sh" && "$#" == "2" ]]; then
    ext="sh"
    task="$2"
  elif [[ "$1" == "-py" && "$#" == "2" ]]; then
    ext="py"
    task="$2"
  elif [[ "$#" == "1" ]]; then
    ext="sh"
    task="$1"
  else
    task="---"
  fi

  if [[ "$task" == "-a" ]]; then
    # Test all files
    scripts_count=`ls task*.$ext | grep "task*" | wc -l`
    script_files=()
    readarray -t script_files < <(ls task*.$ext | grep "task*")
    for ((i = 0; i < $scripts_count; i++)) do
      if [[ -f "${script_files[i]}" ]]; then
        echo "--- Executing ./${script_files[i]} ---"
        "./${script_files[i]}"
      fi
    done
    echo -e "\e[0m"
  elif [[ -f "$task" ]]; then
    # Test the given file
    "./$task"
    echo -e "\e[0m"
  elif [[ -f "task-$task.$ext" || -f "task-0$task.$ext" ]]; then
    # Test the file based on task id
    if [[ -f "task-$task.$ext" ]]; then
      "./task-$task.$ext"
      echo -e "\e[0m"
    else
      "./task-0$task.$ext"
      echo -e "\e[0m"
    fi
  else
    echo -e "\e[31mInvalid usage\e[0m"
    help_test
  fi
}

##########################
# Prints the help page for this test suite.
# Globals:
#   None
# Arguments:
#   None
# Returns:
#   None
help_test()
{
  echo "Usage 00 (run all test files): ss_test [-sh|-py] -a"
  echo "Usage 01 (run test file): ss_test FILE"
  echo "Usage 10 (run test file based on task id): ss_test [-sh|-py] ##"
  echo -e "\nIf [-sh|-py] is left empty, it is assumed to be -sh"
}
