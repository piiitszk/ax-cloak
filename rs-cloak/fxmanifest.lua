dependency 'dynamic'

fx_version "cerulean"
game "gta5"

client_scripts {
    "@vrp/lib/utils.lua",
    "config.lua",
    "client-side/*"
}

server_scripts {
    "@vrp/lib/utils.lua",
    "config.lua",
    "server-side/*"
}


              