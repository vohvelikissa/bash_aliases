#!/bin/bash
man -k . | dmenu -l 30 | man $(awk '{print $1;}') 
