# Add Open with Cursor Context Menu

This repository provides registry files to add or remove "Open with Cursor" to your Windows context menu (right-click menu). This allows you to quickly open files and folders with the [Cursor Editor](https://cursor.sh/).

## Features

- Adds "Open with Cursor" option when right-clicking:
  - Any file
  - Any folder
  - Folder background (empty space in Explorer)
- Includes uninstall option to remove the context menu entries

## Installation

1. Download the repository
2. Double-click `OpenWithCursorAll.reg` to add the context menu entries
3. Click "Yes" when prompted to modify the registry

Note: The default installation assumes Cursor is installed at `C:\Users\Lorenzo\AppData\Local\Programs\cursor\Cursor.exe`. If your Cursor installation is in a different location, edit the paths in `OpenWithCursorAll.reg` before installing.

## Uninstallation

1. Double-click `OpenWithCursorUninstall.reg`
2. Click "Yes" when prompted to modify the registry

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
