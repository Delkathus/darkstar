-----------------------------------
-- Area: Abyssea-Attohwa
--  NPC: Gurdern
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Abyssea-Attohwa/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Attohwa/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(390);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;