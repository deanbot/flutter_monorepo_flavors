#!/bin/sh
# run from project root to install flutter deps for library and application packages

# library packages
for dir in packages/*/
do
  (
  cd "$dir" || exit
  flutter pub get
  )
done

# app packages
for dir in apps/*/
do
  (
  cd "$dir" || exit
  flutter pub get
  )
done