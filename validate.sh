#!/usr/bin/env bash
cd example/examplea || return
terraform init
terraform validate
