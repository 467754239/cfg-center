#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )" && sh ./stop.sh
cd -
cd "$( dirname "${BASH_SOURCE[0]}" )/.." && ./bin/cfg-server-mon -a 2 -dl ./log/mon.log -R ./bin/alert.sh "./bin/cfg-server-linux -data ./conf_data >> ./log/server.log 2>&1 "
