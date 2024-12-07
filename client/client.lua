CreateThread(function()
    -- Membuat Target Nampan
    for k,v in ipairs(Config.Location['nampan']) do
        exports.ox_target:addSphereZone({ -- Parameter
            name = "nampan" .. k,
            radius = v.radius,
            coords = v.coords,
            debug = v.debug,
            rotation = v.rotation,
            options = {
                {
                    icon = v.icon,
                    label = v.label,
                    onSelect = function()
                        exports.ox_inventory:openInventory('stash', {id = 'traypedagang' .. k}) -- Export Membuka Stash Yang Sudah Dibuat Di Server Side
                    end
                },
            },
        })
    end
end)