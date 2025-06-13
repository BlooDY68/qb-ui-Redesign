shared_script "@EC_AC/shared.lua" 
 client_script "@EC_AC/shared1.js" 
 server_script "@EC_AC/shared2.js"

fx_version 'cerulean'
game 'gta5'


client_scripts {
    'client.lua',
    'lockpick.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/*.mp3',
    'html/css/style.css',
    'html/css/drawtext.css',
    'html/css/info.css',
    'html/css/lockpick.css',
    'html/js/*.js'
}

lua54 'yes'