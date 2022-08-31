---
graphics: true
geometry: true
lang: "fr"
toc: true
toc-own-page: true
colorlinks: blue
custom-title-page: true
custom-title-page-logo: images/logo.png
fontfamily: sourcesanspro
fontfamilyoptions: default
title: "Prise en main"
subtitle: "Cours PDG"
location: "HEIG-VD"
linestretch: 1.3
tables: true
...

# Introduction

Ce document a pour objectif de vous expliquer comment installer et utiliser WhatEat sur votre machine. 

WhatEat est composé d'un frontend et d'un backend. Le frontend est un serveur web qui gère l'affichage des recettes et l'interface utilisateur. Le backend est une API qui propose divers endpoint, appelle la base de données et effectue des appels à l'API de `Spoonacular`. 

`Spoonacular` est une API qui permet de rechercher des recettes et de les afficher. Si vous souhaitez utiliser WhatEat, il est nécessaire d'obtenir un token pour cette API au préalable.

# Prérequis

Les prérequis suivants sont nécessaires pour installer WhatEat :

* [Node.js](https://nodejs.org/en/)
* [npm](https://www.npmjs.com/)
* [Git](https://git-scm.com/)

# Configuration du projet

Pour pouvoir faire tourner WhatEat sur votre machine, voici les étapes à suivre :

## Backend

Le backend utilise NodeJS et Express ainsi qu'une base de données MongoDB. 

1. Cloner le projet

```bash
git clone https://github.com/WhatEatInc/WhatEat-back 
```

2. Créer le fichier `.env`

Une fois le projet cloné, il est nécessaire de créer un fichier `.env` qui contiendra les différentes variables d'environnement. Vous pouvez renommer le fichier `.env.example` en `.env` et remplir les différentes variables. Pour ce fichier, vous devez posséder une clé d'API pour Spoonacular ainsi qu'une base de données MongoDB.

Pour le secret du token JWT, vous pouvez saisir un mot de passe aléatoire.

3. Installer les dépendaces

```bash
npm install
```

4. Lancer le serveur

Pour lancer le serveur en mode `dev`, il suffit de lancer la commande

```bash
npm run dev
```

Pour lancer le serveur en mode `prod`, il suffit de lancer la commande

```bash
npm run start
```

Il est ensuite possible d'effectuer des requêtes HTTP sur l'API du backend.

```HTTP
GET http://localhost:<PORT>/
```

## Frontend

Le frontend utilise ReactJS


1. Cloner le projet

```bash
git clone https://github.com/WhatEatInc/WhatEat-front 
```

2. Créer le fichier `.env`

Une fois le projet cloné, il est nécessaire de créer un fichier `.env` qui contiendra les différentes variables d'environnement. Vous pouvez renommer le fichier `.env.example` en `.env` et remplir les différentes variables.

3. Installer les dépendances

```bash
npm install
```

4. Lancer le serveur

```bash
npm run start
```
