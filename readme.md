# Cours PDG - Rapport de projet

Dans le cadre du cours PDG de la HEIG-VD, nous devons réaliser un travail de groupe qui consiste à développer une application web.

Notre application va vous aider pour tous vos problèmes de repas. Avec **WhatEat** vous obtenez tous les jours des repas personnalisés selon vos préférences.

## Groupe de travail

- Rui Filipe Lopes Gouveia (rui.lopesgouveia@heig-vd.ch) - ISCR - [TODO ROLE]
- Thibault Seem (thibault.seem@heig-vd.ch) - ISCL - [TODO ROLE]
- Joachim Bailat (joachim.bailat@heig-vd.ch) - ISCS - [TODO ROLE]
- Hadrien Louis (hadrien.louis@heig-vd.ch) - ISCL - Chef de projet
- Damiano Mondaini (damiano.mondaini@heig-vd.ch) - ISCL -  [TODO ROLE]

## Technologies utilisées

Pour la réalisation de ce projet, nous avons utilisé les technologies suivantes

- Javascript
   - Nous avons décidé de faire une application web, car cela nous permet d'avoir l'application facilement accessible depuis les Smartphones sans devoir se battre avec le Play Store ou le App Store. Dans l'équipe les gens étaient plus à l'aise d'utiliser JS que PHP ou Java.
- Node.js
   - Nous avons décider d'utiliser Node.js comme moteur pour le code JS.
- React
   - Plusieurs personnes de l'équipe avait déjà connaissance de React.
- ExpresJS
   - ExpressJS est devenue DeFacto le framework backend en conjonction avec node.js
- Base de données MongoDB et Mongoose
   - Dans l'équipe, il y a plusieurs personnes qui savent travailler avec MongoDB et Mongoose permet de faciliter la communication entre node.js et MangoDB 
- Serveur Heroku
   - Après avoir comparé avec plusieurs service d'hébergement de site web sont nous sommes parti sur Heroku, il est simple à utilisé et gratuit pour les projects non commercial. Nous avons mis le backend dessus.
   - Nous avions commencé par mettre le frontend, mais on c'est rendu compte que Heroku a besoin de buildpack pour faire fonctionner React dessus. Après plusieurs tentative nous avons décidé de le mettre ailleurs.
 - Serveur Netlify
   - Après avoir essayer de mettre le frontend sur Heroku, nous avons décidé de hoster le frontend sur un serveur différent. Nous avons choisi de le mettre sur Netlify pour sa faciliter d'utilisation.
- Repository Github avec Kanban
   - Nous avons déjà appris a utilisé ces outils dans nos précédent cours.
- Automatisation des tests avec Github Actions
  - Nous avions décider d'utilisé Github Actions pour faire executer nos test d'intégrations automatiquement, car notre repository est sur Gtihub
- Jest pour les tests d'intégration
  - Nous nous sommes aussi renseigné Mocha et Chai. Nous avons choisi Jest, car plusieurs membres l'on déjà utilisé.
- Prettier pour le formattage du code
  - Nous avons prefére Prettier à un ESlint, car cela est plus facile à utiliser pour tous les membres du groupe.
- Spooncular API
   - Nous avons chercher les différentes API de nourriture et Spooncular est resorti comme étant très complète, mais payante. Nous les avons contactés, car nous avons vu qu'il avit une offre pour les Hackathon ou les projects académique.

## Méthodologie

Pour ce projet, nous avons choisi de travailler en appliquant la méthode agile tout en appliquant certains aspects de la programmation eXtreme ainsi que SCRUM. Nous avons fait ce choix car XP se distingue en 4 points qui correspondent parfaitement à nos besoins.

- Cycles de développement court
- Planification progressive
- Planification flexible
- Tests automatisés

De plus, nous trouvons que les valeurs et principes de cette méthode correspondent à notre philosophie de travail et permettent une bonne cohésion de groupe.

## Gestion du projet

Ce paragraphe a pour objectif de décrire la manière dont nous appliquons l'agilité dans ce projet.

### Client

Dans le cadre de ce cours PDG, il n'y a pas de client principal. Le projet, ses contraintes et ses limites sont imposées par nous-même. Nous avons donc décidé d'une liste de fonctionnalités à implémenter et à partir de ces dernières, nous créerons des sprints contenant les user stories à réaliser.

### User stories

Les users stories sont une description simple d'un besoin ou d'une attente exprimée par l'utilisateur final. Ces stories représentent donc un objectif final et non une fonctionnalité.

La rédaction des stories a été faite au début du projet et sont listées dans le cahier des charges. Au début de chaque sprint, ces stories sont décomposées en tâches ce qui alimente notre product backlog. Toutes les tâches ne doivent pas forcément être faites durant le sprint mais peuvent être faites plus tard. L'équipe sélectionne les tâches qu'elle pense être en mesure de réaliser durant le temps donné.

### Tableau Kanban

Pour pouvoir mettre en pratique les user stories, nous avons décidé d'utiliser un tableau Kanban. Ce dernier contient les 4 colonnes suivantes :

- Todo : La liste globale des tâches
- In progress : Les tâches en cours de réalisation
- Waiting merge : Les tâches en attente de merge
- Done : Les tâches terminées

Il est important de noter que les stories correspondent aux besoins fonctionnels du projet. Ces stories sont par la suite décomposées en tâches qui sont insérées dans le backlog produit.

La gestion de ce tableau est semi-automatisée. En effet, l'ajout d'une fonctionnalité dans le backlog se fait automatiquement lors de la création d'une issue. Cependant, la sélection des tâches à réaliser (Colonne Todo) se fait durant le meeting de début de sprint puis lorsqu'une personne commence à travailler sur une issue elle est en charge de déplacer la tâche dans la colonne Doing. Les colonnes Waiting Merge et Done sont aussi automatisées.

Une fois la tâche terminée et la PR merge avec la branche `develop`, la tâche est automatiquement close et déplacée dans la colonne Done.

### Sprints

Chaque cycle de développement se fait en sprint. Au début de chaque sprint un meeting est organisé entre les membres du projet afin de définir les tâches à réaliser. L'objectif étant qu'à la fin du sprint toutes les tâches à faire soient terminées. Pour l'instant, la durée d'un sprint est équivalente à une semaine.

A la fin de chaque sprint, une deuxième réunion est organisée afin de faire un debrief sur le sprint et de re-évaluer certaines tâches si elles n'ont pas été terminées.

## Méthodes de développement

### Organisation des branches

Nous avons choisi d'utiliser l'organisation de branches suivantes pour notre projet :

- Branche `main` contenant la dernière version stable du logiciel. Cette branche est protégée et il est nécessaire qu'une PR soit faite depuis la branche `develop`. Cette PR doit être validée par un autre membre de l'équipe afin d'être merge.
- Branche `develop` contenant la version en cours de développement du logiciel
- Branche `fb-` pour les nouvelles fonctionnalités à ajouter
- Branche `fix-` pour des bugs à résoudre

### Gestion des issues

- Un template d'issue a été créé afin que toutes respectent le même format et ce afin de faciliter la compréhension et la lisibilité. 
- Une issue doit contenir une brève description, la liste des tâches à réaliser, la durée ainsi que les éventuelles dépendances à d'autres tâches requises
- Lorsqu'un membre de l'équipe commence à travailler sur une tâche, il s'associe la tâche et crée une nouvelle `feature branch` pour y écrire le code. Il doit également faire une estimation du temps nécessaire (Optimiste, Pessimiste, Attendu)
- Une fois la feature terminée, il faut créer une PR depuis Github et assigner au moins une personne afin de review le code. Elle doit être validée par au moins un autre membre du groupe avant d'être merge par son créateur ou quelqu'un d'autre.
- Une fois la PR validée, il est alors possible de merge la feature branche avec `develop`, supprimer la branche et fermer l'issue.

### Messages de commit

Afin de garder une certaine uniformité dans nos messages de commits, nous avons décidé d'utiliser la convention de nommage suivante.

Chaque commit doit être préfixé par les labels suivants :

- [WIP] - pour les work in progress
- [Done] - lorsque qu'une tâches est terminée
- [Fix] - lorsqu'un commit fix un bug

Nous utiliserons l'anglais comme langue principale pour les messages de commit. Nous avons également décidé de signer tous les commit avec PGP.

### Création d'une nouvelle version du logiciel

Comme cité précédemment, les `feature branch` sont merge avec la branche `develop` dès que la PR est validée. A la fin d'un sprint, une personne est en charge de merge `develop` avec la branche `main` afin qu'une nouvelle version du logiciel soit disponible. 

Nous avons décidé d'utiliser Heroku afin de mettre en production notre application. Dès qu'un commit est fait sur la branche `main` les Github Actions seront exécutées et Heroku va automatiquement récupérer les modifications pour les mettre en ligne.

### Tests

Pour ce projet, nous avons décidé d'implémenter des tests unitaires vérifiant le bon fonctionnement de chaque composant ajouté au projet. L'objectif est donc de garantir qu'après chaque ajout de fonctionnalité, aucune autre ne fonctionne plus. Nous essaierons dans la mesure du possible d'aborder une approche TDD au fur cependant, nous ne sommes pas encore familier avec une telle approche.

Ces tests seront rédigés avant ou en même temps que l'ajout d'une fonctionnalité et ce au moyen de l'outil Jest. La validation de tous les tests sera une condition requise afin que cette nouvelle fonctionnalité puisse être ajoutée au projet.

## Mise en place des outils de développement
Nous avons décider d'utiliser VSCode comme IDE avec Node.js et NPM pour l'execution et la gestion des dépendances. Nous avons aussi installer git pour pouvoir envoyer le code vers Github.
Sur Github nous utilisons Jest pour faire des tests intégration et nous utilisons Prettier pour unifier les styles de code.
## Mise en place d’un environnement de déploiement
Nous avons 2 cloud provider. Nous utilisons Heroku pour le backend et Netlify pour le frontend.

## Mise en place d’un pipeline de livraison et de déploiement (CI/CD)
Nous avons une pipeline pour chaque environnement de déploiement
![pipeline CICD](https://user-images.githubusercontent.com/49392659/186608414-93b0c91c-8ab0-4c26-9f4e-47b3e5106924.png)
