@echo off
:: Manually edited post_config script for Windows

echo Running: gitignore
type *.gitignore > .gitignore.tmp 2>nul & del *.gitignore 2>nul & ren .gitignore.tmp .gitignore

echo Running: Initialize git repository
git init

echo Running: Install git-lfs hooks
git lfs install