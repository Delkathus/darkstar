-----------------------------------
-- Area: Davoi
--  NPC: ??? (qm1)
-- Involved in Quest: To Cure a Cough
-- !pos -115.830 -0.427 -184.289 149
-----------------------------------
package.loaded["scripts/zones/Davoi/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/zones/Davoi/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    local toCureaCough = player:getQuestStatus(SANDORIA,TO_CURE_A_COUGH);

    if (toCureaCough == QUEST_ACCEPTED and player:hasKeyItem(dsp.ki.THYME_MOSS) == false) then
        player:addKeyItem(dsp.ki.THYME_MOSS);
        player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.THYME_MOSS);
    end

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
