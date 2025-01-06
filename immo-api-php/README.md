# Slim 4 API

Simple API using Slim v4 MySQL and optionnaly S3 Storage

## Run

- Create `.env` from `.env.exemple`
- Update environement variable
- run `php -S localhost:<PORT> -t ./public`

## Installation des conteneurs Docker
! Prérequis : Installer Docker Desktop

Dans un terminal, après avoir préalablement démaré l'application Docker, placez-vous dans le repertoire "immo-api-php" et écrivez la commande :

- docker compose up -d

Les 2 conteneur possédant la base de donnée et le serveur php vont alors se créer.

## Vérification de l'API
Commencez par vérifier que le conteneur est bien lancé sur Docker, il doit apparaître en vert

Vous devez ensuite vous rendre à l'url " " sur un navigateur web pour vérifier l'API.

Si l'API affiche "Hello World", alors elle fonctionne normalement.

## Vérification de la base de donnée
Vérifier que le conteneur est bien lancé sur Docker, il doit apparaître en vert.

(Pour l'instant c'est la seul façon de vérifier que la base de donnée marche.)


## Explication du projet
Ce projet permet d'avoir un environnement, où se trouve les données ainsi que l'api de l'application.

En hébergeant ces 2 conteneurs, cela permet d'avoir une marge de sécurité supplémentaire car les données ne sont pas mise à disposition, mais intéragisse seulement avec les conteneurs de client et admin de l'application.

Les données de la base de donnée sont stockés dans un conteneur avec l'image mysql.