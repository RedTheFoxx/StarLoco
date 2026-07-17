# Install StarLoco using Docker

## Prérequis

- [Docker](https://docs.docker.com/compose/install/) + Docker Compose
- Sources `login`, `game`, `web` présentes à la racine du dépôt

```bash
docker --version
docker compose version
```

## Démarrage (build local)

Depuis la racine du dépôt :

```bash
./scripts/build.sh   # compile login+game locaux, build images, up -d
```

Ou manuellement dans `docker/` après compilation :

```bash
cd docker
docker compose up -d --build
```

Arrêt :

```bash
docker compose -f docker/docker-compose.yaml down
```

Réinitialiser la base (rejoue `db-init/`, dont le compte admin) :

```bash
docker compose -f docker/docker-compose.yaml down -v
./scripts/build.sh
```

## Services

- **Login** — image locale `starloco/login:local` (contexte `../login`)
- **Game** — image locale `starloco/game:local` (contexte `../game`), scripts montés depuis `../game/scripts`
- **MariaDB** — bases login & game + scripts `db-init/`
- **Redis** — cache game
- **Nginx** — fichiers lang `../web/lang` sur `http://127.0.0.1/dofus/lang/`

## Compte admin

| Champ | Valeur |
|---|---|
| Identifiant | `admin` |
| Mot de passe | `admindofusretro` |

Tout personnage créé sur ce compte reçoit automatiquement le groupe GM **Fondateur**.

## Client

Le dossier `client/` est inclus dans le dépôt. Le `config.xml` utilise déjà `http://127.0.0.1/dofus/` comme dataserver.

```bash
./setup-web.sh   # vérifie que web/lang est présent
```

## Ancien flux (images Hub)

Les images Docker Hub `starloco/login:latest` / `starloco/game:latest` ne sont plus utilisées par défaut : on compile et on build depuis les sources locales.
