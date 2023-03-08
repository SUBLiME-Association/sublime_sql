fx_version 'cerulean'
game 'gta5'
lua54 'yes'
use_experimental_fxv2_oal 'yes'

name 'sublime_sql'
author 'SUBLiME'
version '1.0'
repository 'https://github.com/SUBLiME-Association/sublime_sql'
description 'Gestionnaire sql pour sublime_core'

server_only 'yes'

server_script '@oxmysql/lib/MySQL.lua'
server_script 'config.lua'
server_script 'main.lua'

dependency 'oxmysql'