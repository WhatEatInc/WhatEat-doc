---
graphics: true
geometry: true
lang: "fr"
toc: true
toc-own-page: true
colorlinks: true
custom-title-page: true
custom-title-page-logo: images/logo.png
fontfamily: sourcesanspro
fontfamilyoptions: default
title: "Rapport de projet"
subtitle: "Cours PDG"
location: "HEIG-VD"
linestretch: 1.3
numbersections: true
...

# Introduction

Dans le cadre du cours PDG de la HEIG-VD, nous devons réaliser un travail de groupe qui consiste à développer une application web.

Notre application va vous aider pour tous vos problèmes de repas. Avec **WhatEat** vous obtenez tous les jours des repas personnalisés selon vos préférences.

# Groupe de travail

- Rui Filipe Lopes Gouveia (<rui.lopesgouveia@heig-vd.ch>) - ISCR - Dev frontend
- Thibault Seem (<thibault.seem@heig-vd.ch>) - ISCL - Dev backend
- Joachim Bailat (<joachim.bailat@heig-vd.ch>) - ISCS - Dev backend
- Hadrien Louis (<hadrien.louis@heig-vd.ch>) - ISCL - Chef de projet
- Damiano Mondaini (<damiano.mondaini@heig-vd.ch>) - ISCL -  Dev frontend

# Technologies utilisées

Pour la réalisation de ce projet, nous avons utilisé les technologies suivantes :

- Javascript
   - Nous avons décidé de faire une application web, car cela nous permet d'avoir l'application facilement accessible depuis les Smartphones sans devoir se battre avec le Play Store ou l'App Store. Dans l'équipe certains membres étaient plus à l'aise avec JS que PHP ou Java ce qui explique notre choix.
- Node.js
   - Nous avons décidé d'utiliser Node.js comme moteur pour le code JS du backend.
- React
   - Plusieurs membres de l'équipe avaient déjà connaissance de React plutôt que VueJS. C'est donc pour cette raison que nous avons fait ce choix.
- ExpressJS
   - ExpressJS est devenu de facto le framework backend à utiliser en conjonction avec Node.js pour la création d'une API.
- Base de données MongoDB et Mongoose
   - Nous avons fait le choix d'utiliser une base de données MongoDB. Nous avons fait ce choix car plusieurs membres de l'équipe ont déjà travaillé avec cet outil, de plus, Mongo Atlas permet d'héberger gratuitement des DB dans le Cloud. Nous utilisons également Mongoose afin de faciliter la communication entre Node.js et MangoDB. 

\pagebreak

- Serveur Heroku
   - Après avoir comparé plusieurs services d'hébergement de site web, nous avons fait le choix d'utiliser Heroku. Cet outil est simple à utiliser et gratuit pour les projets non commerciaux. Nous avons utilisé cet outil pour l'hébergement du backend.
   - Nous avions commencé par y héberger le frontend, mais nous nous sommes rendus compte que Heroku avait besoin de "buildpack" pour faire fonctionner React dessus. Après plusieurs tentatives nous avons décidé de l'héberger chez Netlify.
 - Serveur Netlify
   - Après avoir essayé de déployer le frontend sur Heroku, nous avons rencontré divers problèmes ce qui nous a poussé à déployer le frontend sur un serveur différent. Nous avons choisi de le mettre sur Netlify ce qui nous permet de faciliter le déploiement.
- Repository Github avec Kanban
   - Nous avons décidé d'utiliser les outils de Github pour la gestion des tâches et ce afin d'appliquer la méthodologie agile.
- Automatisation des tests avec Github Actions
  - Nous avons décidé d'utiliser Github Actions pour executer nos tests d'intégration automatiquement
- Jest pour les tests d'intégration
  - Nous nous sommes aussi renseignés sur Mocha et Chai. Nous avons choisi Jest, car plusieurs membres l'on déjà utilisé auparavant.
- Prettier pour le formatage du code
  - Nous avons préféré Prettier à ESlint car cela est plus facile à utiliser selon nous, car nous ne sommes pas encore très à l'aise avec ce type d'outil.
- Spooncular API
   - Nous avons cherché les différentes API de recettes à disposition et Spooncular est resortie comme étant très complète, mais payante. Nous les avons contactés car nous avons vu qu'il y avait une offre pour les Hackathon ou les projects académique.

# Méthodologie

Pour ce projet, nous avons choisi de travailler en appliquant la méthode agile tout en appliquant certains aspects de la programmation eXtreme ainsi que SCRUM. Nous avons fait ce choix car XP se distingue en 4 points qui correspondent parfaitement à nos besoins.

- Cycles de développement court
- Planification progressive
- Planification flexible
- Tests automatisés

De plus, nous trouvons que les valeurs et principes de cette méthode correspondent à notre philosophie de travail et permettent une bonne cohésion de groupe.

\pagebreak

# Gestion du projet

Ce paragraphe a pour objectif de décrire la manière dont nous appliquons l'agilité dans ce projet.

## Client

Dans le cadre de ce cours PDG, il n'y a pas de client principal. Le projet, ses contraintes et ses limites sont imposées par nous-même. Nous avons donc décidé d'une liste de fonctionnalités à implémenter et à partir de ces dernières, nous créerons des sprints contenant les user stories à réaliser.

## User stories

Les users stories sont une description simple d'un besoin ou d'une attente exprimée par l'utilisateur final. Ces stories représentent donc un objectif final et non une fonctionnalité.

La rédaction des stories a été faite au début du projet et sont listées dans le cahier des charges. Au début de chaque sprint, ces stories sont décomposées en tâches ce qui alimente notre product backlog. Toutes les tâches ne doivent pas forcément être faites durant le sprint mais peuvent être faites plus tard. L'équipe sélectionne les tâches qu'elle pense être en mesure de réaliser durant le temps donné.

## Tableau Kanban

Pour pouvoir mettre en pratique les user stories, nous avons décidé d'utiliser un tableau Kanban. Ce dernier contient les 4 colonnes suivantes :

- Todo : La liste globale des tâches
- In progress : Les tâches en cours de réalisation
- Waiting merge : Les tâches en attente de merge
- Done : Les tâches terminées

Il est important de noter que les stories correspondent aux besoins fonctionnels du projet. Ces stories sont par la suite décomposées en tâches qui sont insérées dans le backlog produit.

La gestion de ce tableau est semi-automatisée. En effet, l'ajout d'une fonctionnalité dans le backlog se fait automatiquement lors de la création d'une issue. Cependant, la sélection des tâches à réaliser (Colonne Todo) se fait durant le meeting de début de sprint puis lorsqu'une personne commence à travailler sur une issue elle est en charge de déplacer la tâche dans la colonne Doing. Les colonnes Waiting Merge et Done sont aussi automatisées.

Une fois la tâche terminée et la PR merge avec la branche `develop`, la tâche est automatiquement close et déplacée dans la colonne Done.

\pagebreak

## Sprints

Chaque cycle de développement se fait en sprint. Au début de chaque sprint un meeting est organisé entre les membres du projet afin de définir les tâches à réaliser. L'objectif étant qu'à la fin du sprint toutes les tâches à faire soient terminées. Pour l'instant, la durée d'un sprint est équivalente à une semaine.

A la fin de chaque sprint, une deuxième réunion est organisée afin de faire un debrief sur le sprint et de re-évaluer certaines tâches si elles n'ont pas été terminées.

# Méthodes de développement

## Organisation des branches

Nous avons choisi d'utiliser l'organisation de branches suivantes pour notre projet :

- Branche `main` contenant la dernière version stable du logiciel. Cette branche est protégée et il est nécessaire qu'une PR soit faite depuis la branche `develop`. Cette PR doit être validée par un autre membre de l'équipe afin d'être merge.
- Branche `develop` contenant la version en cours de développement du logiciel
- Branche `fb-` pour les nouvelles fonctionnalités à ajouter
- Branche `fix-` pour des bugs à résoudre

## Gestion des issues

- Un template d'issue a été créé afin que toutes respectent le même format et ce afin de faciliter la compréhension et la lisibilité. 
- Une issue doit contenir une brève description, la liste des tâches à réaliser, la durée ainsi que les éventuelles dépendances à d'autres tâches requises.
- Lorsqu'un membre de l'équipe commence à travailler sur une tâche, il s'associe la tâche et crée une nouvelle `feature branch` pour y écrire le code. Il doit également faire une estimation du temps nécessaire (Optimiste, Pessimiste, Attendu)
- Une fois la feature terminée, il faut créer une PR depuis Github et assigner au moins une personne afin de review le code. Elle doit être validée par au moins un autre membre du groupe avant d'être merge par son créateur ou quelqu'un d'autre.
- Une fois la PR validée, il est alors possible de merge la feature branche avec `develop`, supprimer la branche et fermer l'issue.

\pagebreak

## Messages de commit

Afin de garder une certaine uniformité dans nos messages de commits, nous avons décidé d'utiliser la convention de nommage suivante.

Chaque commit doit être préfixé par les labels suivants :

- [WIP] - pour les work in progress
- [Done] - lorsque qu'une tâches est terminée
- [Fix] - lorsqu'un commit fix un bug

Nous utiliserons l'anglais comme langue principale pour les messages de commit. Nous avons également décidé de signer tous les commit avec PGP.

## Création d'une nouvelle version du logiciel

Comme cité précédemment, les `feature branch` sont merge avec la branche `develop` dès que la PR est validée. A la fin d'un sprint, une personne est en charge de merge `develop` avec la branche `main` afin qu'une nouvelle version du logiciel soit disponible. 

## Tests

Pour ce projet, nous avons décidé d'implémenter des tests unitaires pour le backend afin de vérifier le bon fonctionnement de chaque composant ajouté au projet. L'objectif est donc de garantir qu'après chaque ajout de fonctionnalité, aucune autre ne fonctionne plus. Nous essaierons dans la mesure du possible d'aborder une approche TDD au fur et à mesure, cependant, nous ne sommes pas encore familier avec une telle approche.

Ces tests seront rédigés avant ou en même temps que l'ajout d'une fonctionnalité et ce au moyen de l'outil Jest. La validation de tous les tests sera une condition requise afin que cette nouvelle fonctionnalité puisse être ajoutée au projet.

# Mise en place des outils de développement

Nous avons décidé d'utiliser VSCode comme IDE avec Node.js et npm pour l'execution du JS et la gestion des dépendances. Nous avons aussi installé git pour pouvoir envoyer le code vers Github. 

Lors de la phase de développement, nous faisons tourner le backend et le frontend en local sur des ports différents. Des fichiers `.env` ont été créés pour les deux projets et ce afin de préciser les éventuelles variables globales (URL de la DB, port, mot de passe, etc..)

Avec une telle architecture, il est tout à fait possible de faire des modifications sur le frontend sans endommager le backend et vice-versa. La backend de l'API a également été conçu afin de prendre en charge des versions d'API `/v1/users` et `/v2/users`. Cette solution nous permet aussi de modifier certains endpoints du backend sans corrompre les éventuels appels à des anciens endpoints.

\pagebreak

En ce qui concerne la base de données, nous avons fait le choix de créer deux base de données. Une de prod qui sera utilisée par l'application en ligne (Celle utilisée par nos users) puis une base de données de dev que nous utilisons lorsque nous faisons tourner le projet en local sur nos machines.

Pour ce qui est des tests unitaires, ils sont effectués avec Jest. Ils peuvent être lancés en local ce qui va créer une DB locale dans la RAM uniquement pour les tests. Nous avons fait ce choix afin d'éviter des éventuels problèmes si plusieurs dev lancent les tests en même temps.

# Mise en place d’un environnement de déploiement

Nous avons 3 cloud provider :

- Heroku : Il est utilisé pour host le backend de l'application gratuitement, il watch le repo whateat-backend, dès lors qu'une modification est détectée sur le repo, il récupère les changements, rebuild de son côté et "serve" le tout.

- Netlify : Il est utilisé pour host le front gratuitement, un bot netlify est installé sur notre repo il lance les tests, et de la même manière qu'Heroku, Netlify watch le repo whateat-front et à chaque changement il récupère les données et les "serve".

- MongoDB Atlas : Il est utilisé pour host nos bases de données gratuitement (production et développement)
\
\

![Infrastructure](./images/backend_schema.png)

\pagebreak

# Mise en place d’un pipeline de livraison et de déploiement (CI/CD)

Nous avons mis en place 2 pipelines, un pour le frontend, l'autre pour le backend.

Les deux pipelines ont la même logique de base à savoir :

1. Le développeur merge sa feature branch sur la branche de dev
2. Les CI/CD github sont exécutées selon la branche (cf. Figure 2)
3. Lorsque la branch main a été changé les clouds providers (Netlify, Heroku) viennent prendre les derniers changements et s'occupe de serve ce contenu.
\
\

![Pipeline frontend](./images/pipeline-frontend.png)

![Pipeline backend](./images/pipeline-backend.png)

\pagebreak

# Rapport de sprints

Dans ce chapitre, nous allons détailler les différentes tâches effectuées au cours des divers sprints planifiés durant ce projet. Nous allons également détailler les problèmes rencontrés et les solutions apportées.

## Sprint 1

Durant ce sprint, nous avons choisi le projet puis nous avons commencé la rédaction des divers documents.

   - Rédaction du cahier des charges
   - Rédaction de la landing page
   - Création des mock-up sur Figma
   - Création de la documentation du projet avec la méthodologie de développement

Dans un second temps, nous avons commencé la mise en place du projet 

   - Création d'une organisation Github pour le projet sur laquelle nous avons créé les différents repos
   - Création d'un compte sur MongoDB Atlas
   - Création des DB (prod et tests) sur MongoDB Atlas
   - Création d'un compte sur Heroku
   - Création de la base de l'app frontend
   - Création de la base de l'app backend
   - Déploiement de test sur Heroku
   - Création d'un compte sur Netlify
   - Déploiement de test sur Netlify

Ces diverses tâches ont été effectuées afin de préparer au mieux le projet pour le sprint 2. En parallèle, nous avons commencé à créer la pipeline Github Actions.

   - Mise en place de l'environnement de développement et de déploiement
   - Contacter `Spooncular` pour avoir un compte académique et ainsi bénéficier d'une offre étudiant.
   - Lister les features de l'API de `Spooncular` que nous avons décidé d'utiliser et que nous proposerons à nos utilisateurs
   - Création des issues sur Github en fonction des besoins fonctionnels présentés dans le cahier des charges
   - Création de la pipeline Github Actions pour le backend avec prettier et Jest pour les tests unitaires

Nous avons terminé le sprint en testant la communication entre le backend et le frontend

   - Création d'une route de test sur le backend
   - Création d'une requête fetch du frontend au backend
   - Activation des CORS
   - Connexion du backend à MongoDB Atlas

En fin de semaine, nous avons préparé la présentation de lundi qui a pour objectif de présenter notre projet, ses objectifs et ses fonctionnalités, aux autres groupes.

## Sprint 2

Pour ce deuxième sprint, nous nous sommes principalement concentrés sur le développement de l'application. Nous avons décidé de nous répartir le travail avec une équipe en charge du frontend ainsi qu'un équipe pour le backend.

Les diverses tâches effectuées sont les suivantes : 

   - Création des routes du backend (API Endpoints)
   - Mise en place de la connexion entre le backend et MongoDB Atlas
   - Création des modèles de données pour les différentes collections de la DB
   - Mise en place des tests unitaires pour le backend
   - Mise en place de la connexion entre le frontend et le backend
   - Ajout de l'authentification avec token JWT
   - Création des diverses pages du frontend (Today, Recipe details, Settings, Login, Register, Change password)
   - Mise à jour des préférences de l'utilisateur et récupération d'une recette adaptée
   - Mise en forme des pages du frontend (CSS)
   - Mise à jour des quantités de chaque ingrédient en fonction du nombre de personnes
   - Export d'une recette en PDF

Assez rapidement, nous avons dû nous intéresser aux tokens JWT afin de protéger certains endpoints du backend. Après avoir fait de nombreuses recherches, nous avons facilement pu implémenter ces tokens dans notre application tout en vérifiant le bon fonctionnement de l'application côté frontend.

En ce qui concerne la documentation, nous avons créé le document de prise en main du projet. Ce document a pour objectif de permettre à un nouveau développeur de prendre en main le projet en quelques minutes tout en ayant une vision globale de la structure du projet. Pour faciliter cette prise en main, nous avons également créé une documentation de notre API avec API Doc. 

### Difficultés rencontrées

Durant ce sprint, une tâche nous pris plus de temps que prévu. Il s'agit de la fonctionnalité d'export en PDF d'une recette. Bien que cela puisse paraître simple, nous avons passé beaucoup de temps à trouver une solution à ce problème. Nous avons finalement opté pour la librairie `jspdf` et `html2canvas`. De plus, la mise en page de la recette au format A4 n'était pas simple à réaliser et nous avons rencontré divers bugs entre les différents lecteurs PDF sur mobile. Après avoir passé beaucoup de temps pour obtenir un PDF lisible sur toutes les plateformes, nous avons finalement réussi à obtenir un résultat satisfaisant.

\pagebreak

## Sprint 3

Pour ce dernier sprint, nous avons décomposé le travail en deux parties. La première partie consistait à terminer les fonctionnalités de l'application. La seconde partie à produire les différents documents de rendus du projet.

Nous avons donc terminé et fermé les issues manquantes sur Github:

   - Création de l'endpoint reroll et connexion avec le frontend
   - Design de la landing Page
   - Design de la page Login, Logout et Register
   - Fin de la page Today avec toutes les connexions au backend
   - Ajout de nombreux tests unitaires avec Jest
   - Cleanup général du code et correction de bugs

Dans un second temps, nous avons revu la documentation du projet afin de terminer la rédaction de tous les documents attendus.

   - Mise à jour de la prise en main du projet
   - Mise à jour du rapport de projet
   - Mise à jour des schémas des pipelines / infrastructure
   - Mise à jour de la documentation de l'API
   - Ajout de la comparaison du temps attendu vs effectué

Nous avons également préparé le rendu final du projet

   - Présentation PowerPoint du projet
   - Vidéo de présentation du projet

\pagebreak

# Comparaison temps estimé et réalisé

En fin de sprint, nous avons récupéré les données de temps indiquées dans les issues Github afin de comparer les temps attendus et effectués. Vous trouverez en [annexe](#annexes) tous les détails des temps. 

Les résultats obtenus pour le backend et le frontend montrent que dans les deux cas, le temps effectué est le double du temps attendu. De plus, nous constatons que le temps effectué est légèrement supérieur au temps pessimiste (env 4h dans les deux cas). 

Nous pouvons donc en conclure que pour nos futurs projets, il sera nécessaire de revoir à la hausse nos estimations "attendue". Nous restons tout de même assez satisfait du fait que le temps effectué soit très proche du temps pessimiste.

![Résumé comparaison des temps](./images/chart.svg)

\pagebreak

# Annexes

![Comparaison des temps pour le backend](./images/backend-stats.png)

![Comparaison des temps pour le frontend](./images/frontend-stats.png)
