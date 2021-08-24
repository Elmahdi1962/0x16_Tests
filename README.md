# 0x16_Tests

Tests Scripts for the 0x16.C-Simple_shell Project
## Where To Clone

You should clone this repo inside your shell repo and in your shell repo's `.gitignore` file ignore this repo by adding it's name to gitignore of course `0x16_Tests`.
<br/>
<br/>
If you got confused contact `Elmahdi Mamoun` in Slack.

## From where do I get the shell program to tests on it

You get the program from the parent folder of the 0x16_Tests folder, which will be your shell repo.

## How To Use

1. First, load the **.bashrc** file into your bash terminal using `source .bashrc`.
2. The previous step would load some functions to your terminal. The functions are as follows:<br/>
   + **ss_test:** Runs one or all test script(s)
   + **help_test:** Prints the usage information for the test suite
3. Run `ss_test -a` to run all `.sh` test files or `ss_test -py -a` to run all `.py` test files.
4. Run `ss_test file` to run a single test file. E.g.; `ss_test task-2.sh`.
5. Run `ss_test #` (`#` is a number) to run a test file for a given task id. E.g.; `ss_test 3` would run `task-3.sh`'s script. and `ss_test -py 3` would run `task-03.py`'s script.
6. You have to name the test scripts like this: <br/>`task-(task number).sh`<br/>For example `task-1.sh` or `task-01.sh` (for better sorting).

## Contributing

After contributing a test case to this repo, please add your name and email address to the [AUTHORS](AUTHORS) file. You should add your name whilst ensuring that the list of authors are in alphabetical order with the firstname provided first, an optional set of middle names, your last name, and your email address in angle brackets. This is shown in the format below.

```
John Doe <john_doe@dogemail.com>
```
