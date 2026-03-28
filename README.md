# Snow-War v2.1 — Pre-Extracted Mod Files

**Snow-War** is a multiplayer Half-Life mod by **Teemu Polvi** and the **Snow-War Team** (2001–2004). Players throw snowballs at each other in a fast-paced deathmatch. When you spawn, you start with one snowball — press the "make snowball" button to make more (max 3 at a time, unless you find a ballbag power-up).

---

## Why This Repo Exists

The original Snow-War v2.1 installer (`snow-war-v21.exe`) is broken on modern systems and has been reported non-functional even on Windows XP. This repository provides the **pre-extracted, unmodified mod files** so the mod can be installed manually without relying on the broken installer.

All files are exactly as they were distributed in the original v2.1 release. Nothing has been added, removed, or modified.

---

## Installation

### Option 1: Use the Installer

Download `SnowWar_v21_Setup.exe` from the [Releases](../../releases) page and run it. It will ask you to select your Half-Life directory and copy the mod files automatically.

### Option 2: Manual Install

1. Download or clone this repository
2. Copy the `snow` folder into your Half-Life directory:
   - **WON/Retail**: `C:\Sierra\Half-Life\`
   - **Steam**: `C:\Program Files (x86)\Steam\steamapps\common\Half-Life\`
   - **HLDS Server**: `C:\HLServer\` (or wherever your server is installed)
3. Launch Half-Life, go to **Custom Game**, and select **Snow-War**
4. For dedicated servers: `hlds.exe -console -game snow +map sw_xmas +maxplayers 16 -port 27015`

---

## WON2 Server Hosting

This mod is compatible with WON2 (Protocol 46) dedicated servers. To host a Snow-War server on WON2:

```
hlds.exe -console -game snow +map sw_xmas +maxplayers 16 -port 27015 +ip YOUR_LAN_IP +sv_lan 1
```

Players will need the Snow-War mod files installed in their Half-Life client to connect.

---

## Original Credits

- **Teemu Polvi** — Creator
- **Snow-War Team** — Development
- Original website (defunct): snow-war.net
- ModDB page: [https://www.moddb.com/mods/snow-war](https://www.moddb.com/mods/snow-war)

---

## License

From the original `license.txt`:

> Copyright (C) 2004 - Teemu Polvi & "Snow-War Team"
>
> This mod is copyrighted by its authors. The mod can be redistributed and copied freely, but it must remain unchanged and must include all the official files. This mod is released freely. It must not be sold or rented. No kind of editing or using in other projects is allowed without asking the authors' permission first.

This repository redistributes the mod unchanged with all original files, in accordance with the license terms above.

---

## See Also

- [Snow War 25th Anniversary Patch](https://www.moddb.com/games/half-life/addons/snow-war-25th-anniversary-patch) — Community patch with updated menu and UI
- [Snow War standalone game](https://www.thegamer.com/half-life-snow-war-mod-standalone-fps/) — A modern successor being developed by Gnomecraft
