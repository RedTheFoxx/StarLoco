USE starloco_login;

-- Nettoyage des comptes / personnages de démo
DELETE p FROM `world_players` p
INNER JOIN `world_accounts` a ON a.`guid` = p.`account`
WHERE a.`account` IN ('test', 'test2', 'test3', 'red');
DELETE FROM `world_accounts` WHERE `account` IN ('test', 'test2', 'test3', 'red');

-- Compte admin (mot de passe: admindofusretro, hash SHA512(MD5(password).hex))
INSERT INTO `world_accounts` (
  `guid`, `account`, `pass`, `muteTime`, `email`, `lastIP`, `lastConnectionDate`,
  `migration`, `question`, `reponse`, `pseudo`, `banned`, `bannedTime`, `reload_needed`,
  `friends`, `enemy`, `points`, `logged`, `subscribe`, `vip`, `muteRaison`, `mutePseudo`,
  `lastConnectDay`, `dateRegister`, `lastVoteIP`, `heurevote`, `totalVotes`,
  `twitter`, `facebook`, `google`, `votes`
) VALUES (
  1, 'admin', '5afe8d7185b341b0e12a0674d6fb9941bdfd8e2169a654456fefa1461fdefb7703f00d80ea8fdb907c0c9f105a2d2e3889239cd4cc15f6827c9ce1dde9c8eb98',
  0, NULL, NULL, NULL, 0, 'supprimer ?', 'oui', 'Admin', 0, 0, 1, '', '', 0, 0, 0, 0,
  NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0
);

-- Tout personnage créé sur le compte admin reçoit le groupe Fondateur (toutes les commandes GM)
DROP TRIGGER IF EXISTS `trg_admin_founder_groupe`;
CREATE TRIGGER `trg_admin_founder_groupe`
BEFORE INSERT ON `world_players`
FOR EACH ROW
SET NEW.`groupe` = IF(
  (SELECT `account` FROM `world_accounts` WHERE `guid` = NEW.`account` LIMIT 1) = 'admin',
  1,
  NEW.`groupe`
);
