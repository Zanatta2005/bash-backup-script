# Bash Backup Script

A simple Bash script that creates a timestamped ZIP backup of a folder and keeps only the most recent backups.

## Features

- Creates a ZIP file with the date and time in its name (e.g. `practica_2026-10-31_22-08.zip`)
- Checks that the source folder exists before running
- Shows the size of the new backup
- Deletes old backups automatically, keeping only the latest 3

## Requirements

- Linux (tested on Ubuntu with WSL)
- `zip` installed: `sudo apt install zip`

## Usage

1. Edit the variables at the top of the script (`ORIGEN`, `DESTINO`, `MANTENER`).
2. Make it executable and run it:

```bash
chmod +x respaldo.sh
./respaldo.sh
```

## What I learned

Bash variables, conditionals, exit codes, file permissions, pipes and automating cleanup tasks.

## Author

Claudio Zanatta Casas
