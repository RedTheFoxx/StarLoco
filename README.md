# StarLoco Emu - Customized by Red

Émulateur Dofus 1.39.8 (StarLoco) prêt à jouer : sources `login`, `game`, `web` et client Electron inclus.

## Développement local

```bash
git clone git@github.com:RedTheFoxx/StarLoco.git
cd StarLoco

# Compiler depuis les sources, builder les images, démarrer la stack
./scripts/setup.sh
# équivalent : ./scripts/build.sh
```

Commandes utiles :

| Commande                                            | Rôle                                               |
| --------------------------------------------------- | -------------------------------------------------- |
| `./scripts/build.sh`                                | Compile (Gradle via Docker), build images, `up -d` |
| `./scripts/build.sh --no-up`                        | Compile + build images sans démarrer               |
| `docker compose -f docker/docker-compose.yaml down` | Arrête la stack                                    |

Compte de jeu créé automatiquement :

- **Identifiant** : `admin`
- **Mot de passe** : `admindofusretro`
- Les personnages créés sur ce compte reçoivent le groupe GM **Fondateur** (toutes les commandes).

> Les scripts `docker/db-init/` ne s’exécutent qu’à la **première** création du volume MariaDB. Pour réappliquer : `docker compose -f docker/docker-compose.yaml down -v` puis `./scripts/build.sh`.

Le client (`client/`) pointe déjà le dataserver vers `http://127.0.0.1/dofus/`.

Détails Docker : [docker/README.md](docker/README.md).

## Commandes GM (chat)

Préfixe `.a` (groupe Fondateur requis) :

```text
.a HELP
.a LEVEL 200
.a KAMAS 1000000
.a ITEM 1 1
.a ASTRUB
```

Liste complète : [docs/commandes-gm.md](docs/commandes-gm.md).

## Installation Windows (Scoop)

Guide classique : [docs/quickstart](powershell/docs/quickstart.md) ou [step-by-step](powershell/docs/step-by-step.md).
