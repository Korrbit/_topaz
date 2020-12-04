-----------------------------------
-- Area: Kazham
--  NPC: Qhio Plittibhi
-- Standard Info NPC
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)
    if (player:getCharVar("BathedInScent") == 1) then
        player:startEvent(189) -- scent from Blue Rafflesias
    else
        player:startEvent(154)
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
