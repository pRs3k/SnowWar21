# Building the Installer

The installer is built using **NSIS (Nullsoft Scriptable Install System)** — the same tool used for most classic Half-Life mod installers from the 2000s era.

## Steps

1. **Install NSIS** from [https://nsis.sourceforge.io/Download](https://nsis.sourceforge.io/Download)

2. **Clone this repo** and make sure the `snow` folder with all mod files is present at the repo root:
   ```
   SnowWar_v21_Setup.nsi
   snow/
     license.txt
     dlls/
     maps/
     models/
     ...
   ```

3. **Compile the installer** — either:
   - Right-click `SnowWar_v21_Setup.nsi` → **Compile NSIS Script**
   - Or from command line: `makensis SnowWar_v21_Setup.nsi`

4. **Output:** `SnowWar_v21_Setup.exe` will be created in the repo root.

## How the Installer Works

- Presents a classic wizard-style installer (welcome → license → directory selection → install → finish)
- Auto-detects the Half-Life install path from the Windows registry
- Falls back to `C:\Sierra\Half-Life` if no registry key is found
- Validates the target directory looks like a Half-Life installation
- Copies the `snow` folder into the selected Half-Life directory
- Includes an uninstaller inside the `snow` folder

## Uploading to GitHub Releases

After building, upload `SnowWar_v21_Setup.exe` as a binary attachment to a GitHub Release so users can download it directly without cloning the repo.
