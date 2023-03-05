local cfg <const> = Config

local playersExist <const> = MySQL.scalar.await(cfg.players.exist)
local charactersExist <const> = MySQL.scalar.await(cfg.characters.exist)

if not playersExist then
    MySQL.query(cfg.players.create)
end

if not charactersExist then
    MySQL.query(cfg.characters.create)
end