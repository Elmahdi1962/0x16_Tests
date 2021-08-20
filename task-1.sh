#!/bin/bash
echo -e "\n\nRunning Betty on *.c Files =============================================="
betty ../*.c
echo -e "\n\nRunning Betty on *.h Files =============================================="
betty ../*.h
