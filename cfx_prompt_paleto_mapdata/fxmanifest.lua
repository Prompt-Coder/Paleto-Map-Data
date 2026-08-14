fx_version "cerulean"
games { 'gta5' }

author 'Prompt Mods'
description 'Hornys+Sheriff+Firestation'
version '1.0.0'

this_is_a_map 'yes'

escrow_ignore {
    'stream/**'
}

-- scripts --
lua54 'yes'


client_scripts {
    'client.js'
}

server_scripts{
    'sv_MapDataHandler.lua',
    'server.js'
}
