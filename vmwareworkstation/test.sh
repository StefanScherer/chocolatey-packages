#!/bin/bash
docker run --rm -v C:$(pwd):C:/code -w C:/code stefanscherer/chocolatey choco install -y -pre -source . $*
