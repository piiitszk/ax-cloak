local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
pTz = {}
Tunnel.bindInterface(GetCurrentResourceName(),pTz)

pTz.checkPermission = function(permission)
    local source = source
    local user_id = vRP.getUserId(source)

    if type(rs.fardamentos[permission]["permission"]) == "table" then
        for k,v in pairs(rs.fardamentos[permission]["permission"]) do
            if vRP.hasPermission(user_id,v) then
                return true
            end
        
            if rs.creative then
                if vRP.hasGroup(user_id,v) then
                    return true
                end
            end
        end
    else
        if vRP.hasPermission(user_id,rs.fardamentos[permission]["permission"]) then
            return true
        end
    
        if rs.creative then
            if vRP.hasGroup(user_id,rs.fardamentos[permission]["permission"]) then
                return true
            end
        end
    end

    TriggerClientEvent("Notify",source,rs.notify_error_colour,rs.notify_error_message )
    return false
end
