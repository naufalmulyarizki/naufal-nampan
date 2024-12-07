AddEventHandler('onServerResourceStart', function(resourceName) -- Event Ketika Start Resource
	if resourceName == 'naufal-nampan' then -- Validasi Kalau Nama Resourcenya Sesuai
		for k,v in pairs(Config.Location['nampan']) do
			exports.ox_inventory:RegisterStash('traypedagang' .. k, "Nampan", 10, 1000000, true) -- Membuat Stash Nampan
		end
	end
end)