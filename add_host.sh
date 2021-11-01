#!/bin/bash
# This file was added, becuase inside sed didn't recognize TAB and new line characters

sed 's/^$/192\.168\.33\.10\t\www\.dummy-example\.com\n/g' -i /etc/hosts