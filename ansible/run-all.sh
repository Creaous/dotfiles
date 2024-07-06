#!/bin/bash
echo "Ensuring the scripts are executable"
chmod +x stage-1.sh
chmod +x stage-2.sh
echo "Executing stage 1 of the scripts"
./stage-1.sh
echo "Executing stage 2 of the scripts"
./stage-2.sh
echo "(Hopefully) it completed successfully."
