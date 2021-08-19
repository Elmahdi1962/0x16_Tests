#!/bin/bash

# Syntx errors
echo 'echo 65; ; ;echo 12' | ./simple_shell
echo ';echo 65; echo 12' | ./simple_shell
