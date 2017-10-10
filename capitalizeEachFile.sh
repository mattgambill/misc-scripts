#!/bin/bash
# Date Created: September 2017
# Created by: Matt Gambill
# Capitalizes the filename in the current directory change *.* to *.pdf for pdf or any
# other file type
for i in *.*; do mv -v "$i" "${i^}"; done
