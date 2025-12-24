#!/bin/bash

# -----Configuration----- # 

set -e									 # exit under ANY failure case #

# -----Identify the Directories----- #
MINECRAFT_DIR="/home/robertbenstine/minecraft/server"
BACKUP_DIR="/home/robertbenstine/minecraft/world_backup"

# -----Remote Console Config----- #
RCON_HOST="100.122.225.11" # HOST OF SERVER?
RCON_PORT="25575" # PORT OF ACCESS
RCON_PASS="AndiShadow01!" # PASSWORD
RCON_TOOL="/usr/local/bin/mcrcon" # CLI - SSH forwhich mcrcon Minecraft Server

# -----BACKUP Logic----- # 


TIMESTAMP=$ # Files Time of Backup #


WORLD_FOLDERS=(
		"$~/minecraft/2-week phase (2 week phase)"      # Overworld #
		"$~/minecraft/2-week phase (2 week phase)/DIM1" # End #
		"$~/minecraft/2-week phase (2 week phase)/DIM-1" # Nether #
		)

# ----- Stop Auto-Save for World ----- #
echo "Stopping Auto-Saves. . ."


# ----- Flush World Save ----- #

echo "flushing World Saves. . ." 

# ----- Create Compressed Backup Save ----- #

echo "Ceeating Backup. . ."

# ----- Enable Auto-Save ----- #

echo "Re-enabling Auto-Saves. . ."

# ----- 'Clean-up' Old saves ----- # 

# ----- End ----- #

echo "Process Complete!"
