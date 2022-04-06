# Experience Retrieval
## Overview
Current Version: 1.0

A small data pack for Minecraft: Java Edition 1.19. Players are allowed to retrieve all of their experience, but only if they can get to it before they die again. Players can only retrieve their own experience.

NOTE: This pack has not been fully tested in multiplayer. Please open an issue if you experience a bug.

## Installation Steps
- Download the contents of this repository as a ZIP file.
- Navigate to your Minecraft world, usually located in `%AppData%\.minecraft\saves`
- Extract the contents of the ZIP file into the `datapacks` folder inside your world.
- Load up your world and enjoy the pack!

## Configuration
By default, this pack does not change how experience is dropped when keepInventory is set to true. If you want this enabled for an extra challenge, you can enable Experience Retrieval for keepInventory worlds by setting the `$keepExperience` score to 0.
```
/scoreboard players set $keepExperience bloodstain_var 0
```
