#!/bin/bash
while [[ $# -gt 0 ]]
do
arg="$1"
    case "${arg}" in
    -i|--implement)
	 echo "implement on"
         shift # past argument
        ;;
    -c|--config)
	  echo "config"
        TOOL_CFG_FILE_PATH="$2"
        shift # past argument
        shift # past value
        ;;
	esac
done
