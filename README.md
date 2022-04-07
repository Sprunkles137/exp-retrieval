# Experience Retrieval
## Overview
Current Version: 1.1

A small data pack for Minecraft: Java Edition 1.19. Instead of dropping experience upon a death, a small sprout appears where the player died, and that player can interact with it to retrieve their experience points. But only if they can get to it before they die again—otherwse it's gone forever. Players can only retrieve their own experience, and not somebody else's.

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

## Changelog
### Version 1.1
The sprout is now based on the last safe spot you were standing before you died, up to ten seconds ago. Unsafe locations are marked as follows: being in lava, or above air. It will still appear at your location if no safe location could be found, however.

### Version 1.0
Initial release. The sprout appears at the location where a player died. Interacting with the sprout will grant all experience back. Dying again will lose all prior EXP and cause the sprout to spawn at a new location.
