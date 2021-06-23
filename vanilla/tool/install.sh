#!/bin/sh

cd packages
cd app_core; flutter pub get; cd ..
cd http_album_repository; flutter pub get; cd ..
cd mock_album_repository; flutter pub get; cd ..
cd widgets_library; flutter pub get; cd ..