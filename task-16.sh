#!/bin/bash

# Syntax errors
echo 'echo 12 |& echo 78' | ./simple_shell
echo 'echo 12 ||| echo 78' | ./simple_shell
echo '&& echo 12 || echo 78' | ./simple_shell
echo 'echo 12 || echo 78 |' | ./simple_shell
echo 'echo 12 || echo 78 &&' | ./simple_shell
echo 'echo 12 |( echo 78' | ./simple_shell
echo 'echo 12 |J echo 78' | ./simple_shell
