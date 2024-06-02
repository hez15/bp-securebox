fx_version 'cerulean'
game 'gta5'
lua54 'on'

author 'Bippo'
description 'Securebox'
version '1.0.0'

client_scripts {
    'config.lua',
    'client.lua'
}

server_scripts {
    '@qb-core/import.lua',
    'config.lua',
    'server.lua'
}
