-- !!! NOTE: set these before running the queries in order to avoid conflicts !!!
SET @C_TEMPLATE = 500030;

DELETE FROM `creature_template` WHERE `entry` IN (
	@C_TEMPLATE + 0,
	@C_TEMPLATE + 1,
	@C_TEMPLATE + 2
);

INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
	(@C_TEMPLATE + 0, 'Talamortis', 'Guild House Seller', '', 0, 35, 35, 0, 35, 0, 1, 0, 0, 2000, 2000, 1, 33536, 2048, 7, 4096, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 0, 'GuildHouseSeller'),
	(@C_TEMPLATE + 1, 'Xrispins', 'Guild House Butler', '', 0, 35, 35, 0, 35, 0, 1, 0, 0, 2000, 2000, 1, 33536, 2048, 7, 4096, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 0, 'GuildHouseSpawner'),
	(@C_TEMPLATE + 2, 'Innkeeper Monica', NULL, NULL, 0, 1, 2, 0, 35, 65536, 1, 0, 0, 2000, 1900, 1, 0, 2048, 7, 0, 0, 0, 0, '', 1, 1, 0, 70, 1, 0, 2, 'npc_innkeeper');
	
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (
	@C_TEMPLATE + 0,
	@C_TEMPLATE + 1,
	@C_TEMPLATE + 2
);

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
	(@C_TEMPLATE + 0, 0, 25901, 1, 1, 12340),
	(@C_TEMPLATE + 1, 0, 25901, 1, 1, 12340),
	(@C_TEMPLATE + 2, 0, 18234, 1, 1, 12340);

-- !!! NOTE: set these before running the queries in order to avoid conflicts !!!
SET @GO_TEMPLATE = 500000;

DELETE FROM `gameobject_template` WHERE `entry` IN (
    @GO_TEMPLATE + 0,
    @GO_TEMPLATE + 1,
    @GO_TEMPLATE + 2,
    @GO_TEMPLATE + 3,
    @GO_TEMPLATE + 4,
    @GO_TEMPLATE + 5,
    @GO_TEMPLATE + 6,
    @GO_TEMPLATE + 7,
    @GO_TEMPLATE + 8,
    @GO_TEMPLATE + 9
);

INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
	(@GO_TEMPLATE + 0, 22, 4396, 'Portal to Stormwind', '', '', '', 1, 17334, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
	(@GO_TEMPLATE + 1, 22, 4393, 'Portal to Darnassus', '', '', '', 1, 17608, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
	(@GO_TEMPLATE + 2, 22, 6955, 'Portal to Exodar', '', '', '', 1, 32268, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
	(@GO_TEMPLATE + 3, 22, 4394, 'Portal to Ironforge', '', '', '', 1, 17607, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
	(@GO_TEMPLATE + 4, 22, 4395, 'Portal to Orgrimmar', '', '', '', 1, 17609, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
	(@GO_TEMPLATE + 5, 22, 6956, 'Portal to Silvermoon', '', '', '', 1, 32270, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
	(@GO_TEMPLATE + 6, 22, 4397, 'Portal to Thunder Bluff', '', '', '', 1, 17610, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
	(@GO_TEMPLATE + 7, 22, 4398, 'Portal to Undercity', '', '', '', 1, 17611, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
	(@GO_TEMPLATE + 8, 22, 7146, 'Portal to Shattrath', '', '', '', 1, 35718, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
	(@GO_TEMPLATE + 9, 22, 8111, 'Portal to Dalaran', '', '', '', 1, 53141, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0);
