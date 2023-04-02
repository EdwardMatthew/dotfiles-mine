local status, everblush = pcall(require, 'everblush')
if (not status) then return end

everblush.setup({})

local cb = require('colorbuddy.init')
local Color = cb.Color
local colors = cb.colors
local Group = cb.Group

Color.new('lemon', '#fdfd96')
Group.new('CursorLineNr', colors.lemon)
