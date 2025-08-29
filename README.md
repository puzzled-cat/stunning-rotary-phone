# Balatro Mods

A collection of lightweight mods for [Balatro](https://store.steampowered.com/app/2379780/Balatro/), built with [Steamodded](https://github.com/Steamodded/smods) + [Lovely](https://github.com/ethangreen-dev/lovely).

## Installation

1. **Install Lovely + Steamodded**
   - Place **Lovely’s `version.dll`** in your Balatro game folder.  
   - Ensure the **`smods`** folder is in `AppData/Roaming/Balatro/Mods/`.

2. **Add these mods**
   - Clone or download this repo.  
   - Copy any mod folder (e.g. `stamped-deck/`) into:
     ```
     %AppData%\Balatro\Mods\
     ```
     (On Linux/Steam Deck:  
     `~/.local/share/Steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/Mods/`)

3. **Enable in-game**
   - Launch Balatro.  
   - Click **Mods** on the main menu.  
   - Enable the mods you want.  
   - Start a new run and select the new deck/content.

## Notes
- Mods are hot-reloadable with **Alt+F5** (no need to restart the whole game).  
- If the mod doesn’t appear, make sure:
  - The loader folder is named `smods` (not `smods-1.0.0...`).  
  - Each mod has a valid `*.json` manifest with `"main_file": "main.lua"`.  

---
