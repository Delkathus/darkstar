-----------------------------------------
-- ID: 5568
-- Item: Apkallu Egg
-- Food Effect: 5Min, All Races
-----------------------------------------
-- Health 6
-- Magic 6
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,300,5568);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(dsp.mod.HP, 6);
    target:addMod(dsp.mod.MP, 6);
end;

function onEffectLose(target, effect)
    target:delMod(dsp.mod.HP, 6);
    target:delMod(dsp.mod.MP, 6);
end;
