-----------------------------------
-- Area: Ordelle's Caves
--  MOB: Shrieker
-----------------------------------
require("scripts/globals/groundsofvalor");
-----------------------------------

function onMobDeath(mob, player, isKiller)
    checkGoVregime(player,mob,656,2);
end;