#!/usr/bin/env bash

if pgrep cosmic-files >/dev/null; then
  	wlrctl toplevel focus com.system76.CosmicFiles
else
	cosmic-files 2>&1 &
fi

