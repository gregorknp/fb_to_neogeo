#!/bin/bash
#
# Simple script to move all neogeo roms from Final Burn Neo folder to NeoGeo roms folder.
#
NEOGEO_ROMS_DIR="/userdata/roms/neogeo"
NEOGEO_ROMS_LIST="$1"

if [ "$#" != "1" ]; then
    echo "ERROR. Neogeo roms list file espected as first parameter"
    echo "Usage: $0 path_to_rom_list_file"
    exit 1
fi

while IFS= read -r line; do
   GAME=$line
   GAME=$(echo "$GAME" | tr -d '\r')
	
   mv $GAME $NEOGEO_ROMS_DIR
   if [ $? -eq 0 ]; then	
   	echo "${GAME} moved to ${NEOGEO_ROMS_DIR}"
   fi
done < $NEOGEO_ROMS_LIST
