#!/bin/bash
exec go-cron -s "$SCHEDULE" -- /bin/bash -c app ${@:1}
