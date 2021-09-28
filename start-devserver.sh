#!/bin/bash

cd "$(dirname "$0")"

sphinx-autobuild ./src ./_build/
