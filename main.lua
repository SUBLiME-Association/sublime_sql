local cfg <const> = Config
local CreateThreadNow <const>, ExecuteCommand <const> = Citizen.CreateThreadNow, ExecuteCommand

local function StartResource()
    ExecuteCommand('exec resources.cfg')
end

local mysql <const> = {
    query = MySQL.query,
    query_await = MySQL.query.await,
    scalar = MySQL.scalar,
    scalar_await = MySQL.scalar.await,
    update = MySQL.update,
    update_await = MySQL.update.await,
    insert = MySQL.insert,
    insert_await = MySQL.insert.await,
    single = MySQL.single,
    single_await = MySQL.single.await,
    prepare = MySQL.prepare,
    prepare_await = MySQL.prepare.await,
    transaction = MySQL.transaction,
    transaction_await = MySQL.transaction.await
}

CreateThreadNow(function()
    for _,v in pairs(cfg) do
        local success = pcall(mysql.scalar_await, v.exist)
        if not success then
            local create = mysql.query_await(v.create)
        end
    end
    StartResource()
end)

local function Mysql()
    return mysql
end

local function Sql()
    return cfg
end

exports('mysql', Mysql)
exports('sql', Sql)