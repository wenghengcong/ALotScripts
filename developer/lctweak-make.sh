#!/bin/bash
make clean && make package debug=$1 && make install