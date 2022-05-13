fx_version 'cerulean'
game 'gta5'

description 'qb-miner'
version '1.0.0'
author 'github.com/daccakareem'

shared_script 'config.lua'

server_script {
    'server.lua',
    'config.lua'
}

client_script {
    'client.lua',
    'config.lua'
} 

lua54 'yes'

ui_page 'html/index.html'

files {
	'html/*',
	'html/index.html',
	'html/styles.css',
	'html/app.js',
}
