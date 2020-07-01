-----------------------------------
-- Area: Phomiuna_Aqueducts
-- NPC: Oil Lamp - Fire (West)
-- !pos -63 -26 43
-----------------------------------
local ID = require("scripts/zones/Phomiuna_Aqueducts/IDs")
-----------------------------------

function onTrade(player,npc,trade)
end

function onTrigger(player,npc)

    local DoorOffset = npc:getID()

    player:messageSpecial(ID.text.LAMP_OFFSET) -- fire lamp
    npc:openDoor(7) -- lamp animation

    local element = VanadielDayOfWeek()

    if (day == tpz.day.FIRESDAY) then
        if (GetNPCByID(DoorOffset-6):getAnimation() == 8) then -- ice lamp open?
            GetNPCByID(DoorOffset-9):openDoor(15) -- Door _0rk
        end
    elseif (day == tpz.day.WATERSDAY) then
        if (GetNPCByID(DoorOffset-5):getAnimation() == 8) then -- water lamp open?
            GetNPCByID(DoorOffset-9):openDoor(15) -- Door _0rk
        end
    end

end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end
