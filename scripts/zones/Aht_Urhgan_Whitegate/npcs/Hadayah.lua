-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Hadayah
-- Type: Alchemy Image Support
-- !pos -10.470 -6.25 -141.700 241
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/crafting");
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    local guildMember = isGuildMember(player,1);
    local SkillLevel = player:getSkillLevel(dsp.skill.ALCHEMY);

    if (guildMember == 1) then
        if (player:hasStatusEffect(dsp.effect.ALCHEMY_IMAGERY) == false) then
            player:startEvent(638,4,SkillLevel,1,511,187,0,7,2184);
        else
            player:startEvent(638,4,SkillLevel,1,511,5662,6955,7,2184);
        end
    else
        player:startEvent(638,0,0,0,0,0,0,7,0); -- Standard Dialogue
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)

    if (csid == 638 and option == 1) then
        player:messageSpecial(ALCHEMY_SUPPORT,0,7,1);
        player:addStatusEffect(dsp.effect.ALCHEMY_IMAGERY,1,0,120);
    end
end;