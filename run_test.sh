#!/bin/bash

set -e

salt-lint -c .salt-lint ./salt/*
