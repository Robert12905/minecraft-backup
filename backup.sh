#!/bin/bash

# -----Configuration----- # 

# -----Identify the Directories----- #
MINECRAFT_DIR=
BACKUP_DIR=

# -----Remote Console Config----- #
RCON_HOST # HOST OF SERVER?
RCON_PORT # PORT OF ACCESS
RCON_PASS # PASSWORD
RCON_TOOL # CLI - SSH for Minecraft Server

# -----BACKUP Logic----- # 


TIMESTAMP=$ # Files Time of Backup #
WORLD_FOLDER=$ # Accesses World Folder for Backup #

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
