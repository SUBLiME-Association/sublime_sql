Config  = {}

Config.players = {
    exist = "SELECT 1 FROM players",
    create = [[
        CREATE TABLE `players` (
            `id` int(11) NOT NULL AUTO_INCREMENT,
            `identifier` varchar(80) DEFAULT NULL,
            `name` varchar(100) NOT NULL,
            `password` varchar(20) DEFAULT NULL,
            `permission` varchar(40) DEFAULT NULL,
            `char` longtext DEFAULT NULL,
            `stats` longtext DEFAULT NULL,
            `lastUpdate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
            PRIMARY KEY (`id`) USING BTREE
        )
    ]],
    select = "SELECT * FROM players"
}

Config.characters = {
    exist = "SELECT 1 from characters",
    create = [[
        CREATE TABLE `characters` (
            `identifier` varchar(80) DEFAULT NULL,
            `slot` int(11) DEFAULT NULL,
            `identity` longtext DEFAULT NULL,
            `inventory` longtext DEFAULT NULL,
            `groups` longtext DEFAULT NULL,
            `needs` longtext DEFAULT NULL,
            `coords` varchar(150) DEFAULT NULL,
            `skin` longtext DEFAULT NULL,
            `stats` longtext DEFAULT NULL,
            `lastUpdate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
            PRIMARY KEY (`identifier`) USING BTREE
        )
    ]],
    select = "SELECT * FROM characters"
}