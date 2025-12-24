#!/bin/bash

# -----Configuration----- # 

set -e									 # exit under ANY failure case #

# -----Identify the Directories----- #
MINECRAFT_DIR="/home/YOUR_USER/minecraft/server"
BACKUP_DIR="/home/YOUR_USER/minecraft/backups"

# -----Remote Console Config----- #
RCON_HOST="******" # HOST OF SERVER?
RCON_PORT="25575" # PORT OF ACCESS
RCON_PASS="*****" # PASSWORD
RCON_TOOL="/usr/local/bin/mcrcon" # CLI - SSH forwhich mcrcon Minecraft Server

# -----BACKUP Logic----- # 


TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S") # Files Time of Backup #

WORLD_FOLDERS=(
                "$HOME/minecraft/2-week phase (2 week phase)"      # Overworld #   
                "$HOME/minecraft/2-week phase (2 week phase)/DIM1" # End #
                "$HOME/minecraft/2-week phase (2 week phase)/DIM-1" # Nether #
                )
# ----- Ensure backup directory exists ----- #
mkdir -p "$BACKUP_DIR"

# ----- Safety: always re-enable saves ----- #
trap '$RCON_TOOL -H $RCON_HOST -P $RCON_PORT -p $RCON_PASS "save-on"' EXIT

# ----- Stop Auto-Save for World ----- #
echo "Stopping Auto-Saves. . ."
$RCON_TOOL -H $RCON_HOST -P $RCON_PORT -p $RCON_PASS "save-off"

# ----- Flush World Save ----- #

echo "flushing World Saves. . ."
$RCON_TOOL -H $RCON_HOST -P $RCON_PORT -p $RCON_PASS "save-all flush"

# ----- Create Compressed Backup Save ----- #

echo "Creating Backup. . ."
tar -czf "$BACKUP_DIR/world_backup_$TIMESTAMP.tar.gz" "${WORLD_FOLDERS[@]}"

# ----- Enable Auto-Save ----- #

echo "Re-enabling Auto-Saves. . ."
$RCON_TOOL -H $RCON_HOST -P $RCON_PORT -p $RCON_PASS "save-on"

# ----- End ----- #

echo "Process Complete!"



