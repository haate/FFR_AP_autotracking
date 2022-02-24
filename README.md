# FFR_AP_autotracking

Setting up a recieved item autotracker for FFR on Archipelago (https://github.com/ArchipelagoMW/Archipelago).

This is a pack for black-silver's Poptracker (https://github.com/black-sliver/PopTracker/). 

Pretty simple to use, not 100% as fully functional as the EmoTracker pack, but works for Archipelago.

Known Issues:
- The broadcast view of the tracker is pretty messed up right now. Is being looked at.
- Smithy McBeardSmith may not highlight upon adamant turn in.

Known Limitations:
As the tracker doesn't read the rom's memory, it is only able to track the following things:
- AP Items recieved
- Chests opened which contained AP Items
- Shards recieved via AP (i.e. shards recieved by lighting the orbs don't show up).
It is unable to track the following:
- Orbs lit
- Items turned in (i.e. you won't get the checkmark on the item when you've turned it in)
- When the slab is translated vs when it's picked up. You'll have to manually click the slab to indicate you translated it.
- Non-AP items chests.
This is due to the fact that the tracker only interacts with the Archipelago server, and not with the Emulator's memory. 

If PopTracker is updated to allow interaction with NES games, those limitations will be revisted. But for now, we get what we got.
