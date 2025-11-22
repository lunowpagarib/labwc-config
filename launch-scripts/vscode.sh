#!/usr/bin/env bash

if pgrep -x code  >/dev/null; then
  	wlrctl toplevel focus code
else
	code 2>&1 &
fi
