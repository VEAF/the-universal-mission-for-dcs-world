-- ====================================================================================
-- TUM.RADIOMENU - HANDLES FUNCTIONS MANAGING THE RADIO MENU
-- ====================================================================================
-- (const, local) ANSWER_DELAY
-- (local) function doRadioMessage(args, time)
-- TUM.radio.playForAll(messageID, replacements, callsign, delayed, functionToRun, functionParameters)
-- TUM.radio.playForCoalition(coalitionID, messageID, replacements, callsign, delayed, functionToRun, functionParameters)
-- TUM.radio.playForGroup(groupID, messageID, replacements, callsign, delayed, functionToRun, functionParameters)
-- TUM.radio.playForUnit(unitID, messageID, replacements, callsign, delayed, functionToRun, functionParameters)
-- ====================================================================================

TUM.radioMenu = {}

do
    TUM.radioMenu.rootMenu = nil

    -------------------------------------
    -- Get or create the root menu for the mission commands
    -- @param reset if true, the root menu will be removed and recreated
    -------------------------------------
    function TUM.radioMenu.getOrCreateRootMenu(reset)
        if reset then
            missionCommands.removeItem(TUM.radioMenu.rootMenu) -- Clear the menu
            TUM.radioMenu.rootMenu = nil
            TUM.getOrCreateRootMenu() -- Recreate the root menu
        end
        if not TUM.radioMenu.rootMenu then
            if TUM.administrativeSettings.getValue(TUM.administrativeSettings.USE_SPECIFIC_RADIOMENU) then
                local rootMenuTitle = "✈ TUM"
                TUM.radioMenu.rootMenu = missionCommands.addSubMenu(rootMenuTitle)
            end
        end
        return TUM.radioMenu.rootMenu
    end

    -------------------------------------
    -- Called when an event is raised
    -- @param event The DCS World event
    -------------------------------------
    function TUM.radioMenu.onEvent(event)

        --- Safely returns the initiator's group information (or nil)
        local function getInitiatorData(event)
            local initiatorUnit = event.initiator
            local initiatorGroupName = nil
            local initiatorGroupId = nil
            if initiatorUnit and initiatorUnit.getGroup then
                local group = initiatorUnit:getGroup()
                if group then
                    initiatorGroupName = group:getName()
                    initiatorGroupId = group:getID()
                end
            end
            return initiatorGroupName, initiatorGroupId
        end

        -- Optimization: only handle events  when ADD_MENU_TO_GROUPS or ADD_MENU_TO_GROUPS_CALLBACK are set
        if  not TUM.administrativeSettings.getValue(TUM.administrativeSettings.ADD_MENU_TO_GROUPS)
        and not TUM.administrativeSettings.getValue(TUM.administrativeSettings.ADD_MENU_TO_GROUPS_CALLBACK) then
            return
        end
        if event.id == world.event.S_EVENT_DEAD 
        or event.id == world.event.S_EVENT_EJECTION 
        or event.id == world.event.S_EVENT_KILL 
        then
            -- Get the group of the unit that was killed or ejected
            -- and remove the radio menu for this group.
            local initiatorGroupName, initiatorGroupId = getInitiatorData(event)
            if initiatorGroupId then
                -- Remove the radio menu for this group
                TUM.Logger.debug("TUM.radioMenu.onEvent", "Removing radio menu for group %s (ID: %s)", initiatorGroupName, initiatorGroupId)
                -- TODO
            elseif event.id == world.event.S_EVENT_BIRTH
                or event.id == world.event.S_EVENT_PLAYER_ENTER_UNIT
            then
                -- add the radio menu to this group when ADD_MENU_TO_GROUPS or ADD_MENU_TO_GROUPS_CALLBACK are set.
                TUM.Logger.debug("TUM.radioMenu.onEvent", "Going to add radio menu for group %s (ID: %s)", initiatorGroupName, initiatorGroupId)
                -- TODO 
            end
        end
    end
end
