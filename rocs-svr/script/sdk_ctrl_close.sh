#!/bin/bash

source config/application.conf 2>/dev/null

pkill $app_name*
