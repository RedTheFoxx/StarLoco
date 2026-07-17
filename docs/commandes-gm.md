# Commandes GM (Fondateur)

Préfixe chat : **`.a`** (ex. `.a HELP`, `.a LEVEL 200`).

Groupe : **Fondateur** — toutes les commandes ci-dessous.

## Aide & infos

| Commande | Description |
|---|---|
| `HELP [Commande]` | Liste ou recherche les commandes disponibles |
| `INFOS` | Informations sur le serveur |
| `WHO` | Liste de 30 connectés max |
| `WHOALL` | Liste de tous les connectés |
| `WHOFIGHT` | Connectés en combat |
| `WHOIS [Pseudo]` | Comptes / personnages liés à l’IP du joueur |
| `SHOWPOINTS [Pseudo]` | Affiche les points boutique |
| `MAPINFO` | PNJ et monstres de la map |
| `GETAREA` | IDs des areas |
| `LISTMAP` | Maps de la position actuelle |
| `LISTTYPE [typeId]` | Objets d’un type |
| `LISTEXTRA` | Extra-monstres sur les maps |
| `FINDEXTRAMONSTER` | Extra-monstres mal placés |
| `LOG` | Active / désactive le mode debug console |
| `UTILITY` | Commande secrète |
| `SHOWRIGHTGROUPE [groupeId] [commande]` | Droits d’un groupe GM |

## Téléportation & déplacement

| Commande | Description |
|---|---|
| `TP [mapId] [cellId]` | Téléporte à une position |
| `M [coords]` | Téléporte vers une map |
| `GON [Pseudo]` | Se téléporter à un joueur |
| `NGO [Pseudo]` | Faire venir un joueur |
| `ASTRUB` | Téléporte à Astrub |
| `INCARNAM` | Téléporte à Incarnam |
| `DEBUG [Pseudo]` | Téléporte au point de sauvegarde |
| `WALKFAST` | Déplacement instantané on/off |
| `MPTOTP` | TP auto des joueurs qui envoient un MP |
| `RETURNTP` | Annule `MPTOTP` |
| `INV` | Invisible / visible |
| `FREEZE [Pseudo]` | Bloque les déplacements |
| `GETCASES` | Active / désactive le listage de cellules |
| `B1` | Active getCases |
| `SIZE [Nombre] [Pseudo]` | Modifie la taille du joueur |

## Personnage (stats, objets, métiers)

| Commande | Description |
|---|---|
| `LEVEL [niveau] [Pseudo]` | Fixe le niveau (ne fait que monter) |
| `KAMAS [qté] [Pseudo]` | Ajoute des kamas |
| `POINTS [qté] [Pseudo]` | Points boutique |
| `CAPITAL [qté] [Pseudo]` | Points de capital |
| `SPELLPOINT [qté] [Pseudo]` | Points de sorts |
| `LEARNSPELL [sortId] [Pseudo]` | Apprend un sort |
| `ITEM [itemId] [qté] [jp]` | Ajoute un objet |
| `ITEMSET [panoplieID] [jp]` | Ajoute une panoplie |
| `ITEMTYPE [typeId]` | Tous les objets d’un type |
| `ITEMQUEST [IdQuest]` | Items nécessaires à une quête |
| `!GETITEM [id] [qua]` | Utilisé avec `/ui itemsumonner` |
| `DELINVENTORY [Pseudo]` | Vide l’inventaire |
| `SETSTATS [guidItem] [stats]` | Stats brutes d’un objet |
| `SHOWITEM [Pseudo]` | Voir l’inventaire |
| `SHOWBANK [Pseudo]` | Voir la banque |
| `SHOWSTORE [Pseudo]` | Voir le mode marchand |
| `SHOWMOUNT [Pseudo]` | Inventaire de monture |
| `RESET [Pseudo]` | Réinitialise les stats |
| `RESTAT [Pseudo]` | Restat |
| `ONLINE [Pseudo]` | Réinitialise les variables du joueur |
| `LIFE [Pourcentage] [Pseudo]` | % de vitalité (ex. `000` = 0%) |
| `ENERGIE [Nombre] [Pseudo]` | Énergie (+ ou −) |
| `RES [Pseudo]` | Ressuscite |
| `ALIGN [0–3] [Pseudo]` | Alignement : 0=N 1=BO 2=BR 3=ME |
| `HONOR [qté] [Pseudo]` | Points d’honneur |
| `ADDHONOR [Nombre] [Pseudo]` | Honneur mercenaire uniquement |
| `TITRE [idTitre] [Pseudo]` | Titre |
| `EMOTE [ID] [Pseudo]` | Donne une émote |
| `LJOB [jobId] [Pseudo]` | Apprend un métier |
| `DELJOB [idJob] [Pseudo]` | Supprime un métier (reconnexion) |
| `XPJOB [jobId] [+xp] [Pseudo]` | XP métier |
| `JOBLEFT [Pseudo]` | Ferme les actions de métiers |
| `MORPH [-1\|MorphId] [Pseudo]` | Morph (`-1` = original) |
| `DEMORPHALL` | Apparence originale pour tous |
| `FULLMORPH` | Transforme en Crocoburio |
| `UNFULLMORPH` | Annule FULLMORPH |
| `PETSRES [idItem]` | Ressuscite un familier |
| `RENAMEPERSO [Pseudo] [NewPseudo]` | Renomme un personnage |
| `GMLVL [Gm] [Pseudo]` | Niveau de droits GM |
| `SETGROUPE [groupeId] [Pseudo]` | Groupe GM (`-1` = aucun) |
| `CREATEGUILD [Pseudo]` | Interface création de guilde |
| `RENAMEGUILDE [nameGuilde] [newName]` | Renomme une guilde |

## Quêtes & cadeaux

| Commande | Description |
|---|---|
| `ADDQUEST [idQuest] [Pseudo]` | Apprend une quête |
| `DELQUEST [idQuest] [Pseudo]` | Supprime une quête |
| `SKIPQUEST [idQuest] [Pseudo]` | Passe à l’étape suivante |
| `FINISHQUEST [idQuest] [Perso]` | Termine une quête |
| `GIFTS [Pseudo] [itemId] [qté] [jp]` | Cadeau à un joueur |
| `ALLGIFTS [itemId] [qté] [jp]` | Cadeau à tout le serveur |

## Combat & map

| Commande | Description |
|---|---|
| `STARTFIGHT` | Lance le combat (phase de sélection) |
| `KICKFIGHT [Pseudo]` | Expulse du combat |
| `ENDFIGHT [0\|1]` | 1 = victoire rouges, 0 = bleus |
| `ENDFIGHTALL` | Termine tous les combats (rouges gagnent) |
| `ENDFIGHTNULL` | Fin de combat nulle |
| `CLEANFIGHT` | Supprime les combats de la map (pas ceux en cours) |
| `CHALL [id]` | Ajoute un challenge en combat |
| `BLOCKFIGHT [0\|1]` | Bloque / débloque les combats |
| `NOAGRO [Pseudo]` | Empêche les agressions monstre |
| `SPAWN [monstreId,gradeMin,gradeMax]` | Spawn groupe(s) ; plusieurs via `;` |
| `RMOBS` | Recrée les groupes de monstres |
| `MOVEMOB` | Déplace un groupe de monstres |
| `SHOWFIGHTPOS` | Cellules de combat |
| `ADDFIGHTPOS [0\|1] [Bleu 1 rouge 0]` | Ajoute une cellule de combat |
| `DELFIGHTPOS [0\|1]` | Supprime une cellule de combat |
| `DELALLFIGHTPOS` | Supprime toutes les cellules de combat |
| `BLOCKMAP [0\|1]` | Bloque / débloque la map |
| `MUTEMAP` | Mute la map |
| `ERASEMAP` | Objets au sol de la map |
| `ERASEALLMAP` | Objets au sol de toutes les maps |
| `STARTBOUFBOWL [Pseudo] [Pseudo]` | Lance un Boufbowl (map 9862) |
| `ADDMOBSUBAREA [Groupe]` | Groupe sur toute la sous-zone |
| `GSMOBSUBAREA [MaxGroupe] [minSize] [fixSize] [maxSize]` | Vars de sous-zone |

## PNJ, triggers & enclos

| Commande | Description |
|---|---|
| `ADDNPC [NpcId]` | Ajoute un PNJ |
| `DELNPC [NpcId]` | Supprime un PNJ |
| `ADDNPCITEM [npcId] [itemId]` | Objet en vente PNJ |
| `DELNPCITEM [npcId] [itemId]` | Retire un objet de vente PNJ |
| `ADDTRIGGER [Mapid,Cellid]` | Trigger vers une destination |
| `DELTRIGGER [Cellid]` | Supprime un trigger |
| `SAVETHAT` / `STRIGGER` | Sauvegarde map/cell actuelle |
| `APPLYTHAT` | Trigger vers la position SAVETHAT |
| `APTRIGGER` | Trigger depuis STRIGGER vers ici |
| `ADDCELLPARK` | Cellule d’enclos |
| `A1` | Cellule de spawn de l’enclos |
| `C1` | Ajoute les cellules capturées à l’enclos |
| `O` | Porte d’enclos sur la cellule actuelle |

## SchemaFight

| Commande | Description |
|---|---|
| `ADDSF` | Ajoute un SchemaFight depuis la map |
| `RSF` | Supprime le SchemaFight de la map |
| `SF [idSf]` | Applique un SchemaFight |
| `MSF [idSf1] [idSf2]` | Remplace un SchemaFight par un autre (toutes maps) |
| `HAVESF` | Id SchemaFight de la map |
| `ISSF [idSf]` | Vérifie si applicable |
| `SHOWSF` | Liste `[id] Places` |
| `DALLSFBUG` | Nettoie CellFights buggées |
| `APPLYALEASF` | SchemaFight aléatoires sur maps sans CellFight |

## Modération & serveur

| Commande | Description |
|---|---|
| `MUTE [Pseudo] [Temps]` | Mute |
| `UNMUTE [Pseudo]` | Démute |
| `MUTEIP [Pseudo]` | Mute tous les comptes de l’IP |
| `UNMUTEIP [Pseudo]` | Démute IP |
| `JAIL [Pseudo]` | Prison |
| `UNJAIL [Pseudo]` | Sortie de prison |
| `KICK [Pseudo]` | Expulse du serveur |
| `KICKALL` | Expulse tout le monde |
| `BAN [Pseudo]` | Ban personnage |
| `BANACCOUNT [NomDeCompte]` | Ban compte |
| `BANBYID [ID]` | Ban par ID |
| `BANIP [Pseudo]` | Ban IP (+ kick) |
| `BANBYIP [IP]` | Ban une IP |
| `UNBAN [Pseudo]` | Déban |
| `UNBANIP [Pseudo]` | Déban IP |
| `FLOOD [Pseudo] [Nombre]` | Ouvre des onglets chez le joueur |
| `ANAME [message]` | Annonce serveur (HTML ok) |
| `A [message]` | Message sous le pseudo « serveur » |
| `POP [Pseudo] [message]` | Popup à un joueur |
| `POPALL [message]` | Popup à tous |
| `BLOCKTRADE [0\|1]` | Bloque / débloque les échanges |
| `SAVE` | Sauvegarde serveur |
| `SHUTDOWN [0\|1] [Temps]` | Compte à rebours reboot (minutes) |
| `EXIT` | Reboot immédiat |
| `ETATSERVER [etat]` | 0 hors-ligne, 1 en-ligne, 2 sauvegarde |
| `RELOAD [type]` | Reload (voir la commande pour les types) |
| `MAPSTATE [State] [Value]` | États de map |
| `DLUA [code]` | Exécute du code dans la VM Data |
| `SEND [paquet]` | S’envoyer un paquet |
| `SENDTO [Pseudo] [paquet]` | Paquet à un joueur |
| `SENDTOMAP [paquet]` | Paquet à toute la map |
| `CONVERT` | Entier → base 16 |
