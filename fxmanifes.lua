fx_version 'cerulean'
game 'gta5'

author 'M O N O / T O X I C'
description 'Skrypt na sprzedażdragów dziwnym panom'
version '1.0.0'

client_scripts {
    'client/*.lua',
    'config/*.lua',
}

shared_script 'config/config.lua'

server_scripts {
    'server/*.lua',
    'config/*.lua'
}

dependencies {
    'es_extended',
    'ped_spawner'
}