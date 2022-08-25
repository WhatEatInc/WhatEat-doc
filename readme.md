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
   - Nous avons décider d'utiliser Node.js comme moteur pour le code JS. C'est le plus populaire du marché.
- React et React-Bootstrap
   - Plusieurs personnes de l'équipe avait déjà connaissance de React et nous décider d'utiliser React-Bootstrap pour la mise en page.
- ExpresJS
   - ExpressJS est devenue DeFacto le framework backend en conjonction avec node.js
- Base de données MongoDB et Mongoose
   - Dans l'équipe, il y a plusieurs personnes qui savent travailler avec MongoDB et Mongoose permet de faciliter la communication entre node.js et MangoDB 
- Serveur Heroku
   - Après avoir comparé avec plusieurs service d'hébergement de site web sont nous sommes parti sur Heroku, il est simple à utilisé et gratuit pour les projects non commercial. Nous avons mis le backend dessus.
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

## Mise en place d’un pipeline de livraison et de déploiement (CI/CD)
https://viewer.diagrams.net/?border=0&tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Pipeline-2.drawio&open=R7V1Zd9q6Fv41PIblAdvwmECStqftyjnt7fB0l7AF6MbYHFsE6K%2B%2FkgewJSUIYsm4adKu2NuysPegPWh%2FSc8eL7f3CVgtPsUBDHuWEWx79qRnWabtmOQHpexyynDo5oR5goJi0IHwBf2CBdEoqGsUwLQ2EMdxiNGqTvTjKII%2BrtFAksSb%2BrBZHNY%2FdQXmkCN88UHIU7%2BjAC%2BKt7C8A%2F0dRPNF%2BcmmO8qvLEE5uHiTdAGCeFMh2bc9e5zEMc6PltsxDCnzSr58f7%2F7Hn58dO8%2F%2FJ3%2BC%2F5z89fXz9%2Bu8snuTrll%2FwoJjPDZU7%2Ffboa75dPt8vq%2F71Hy7enBuR0XtxhPIFwX%2FCreFe9KBq5iFOFMCM4N%2BWf0badnjY3sv0MGjDPiaEgJfaotFXp21vdMZrBLmD9miPnIkSOgunsi%2BWffPMEEIyLgj2AKw4c4RRjFEXm%2BaYxxvCQD0keIfSo7g5ws8DIkh2blxusQzekNOF4RKkhXud7N0BYGlFBc9gm3YUIIGQdgcvsEc0bQuYgyrCiDlts5tZu%2Bj1I%2FNkf9dZrdMkNhOI7DOMl4aBuGY3g2vQ0n8SMsr0RxROa4kRRvoQb0LeC2otyFuO9hvIQ42ZEh27oJFpZrlZq9OdiBUwxZVEygpIHC8ub7iQ%2FaRQ4KBTtB2azjypbE6yigUsiYvFkgDL%2BsgE%2Bvbgif6%2FJkmDybQdf3OSaTK4E3mhqGQk5bRp3VZrlmVFjtGgJeE6oiZg%2BOMxtGwTVdYamuhyBNkV%2Fn70EYlHdwi%2FAPekxtPT%2F9mZ06ZnE62VaGTnaVkweYIPJa1DRyWkRe8Uf1pJiqPD1MlZ2Vc50mPxjUXAMvPUlDSGAIMHqqOxSRwIpPeKDrxUE5nFFNN2zDJO9ZmyON14kPi9uqSzgzk2WbzFQGOxUGyRxibqpMhfZvfr5WOWpNGJqBAz2RCY9czwauQhMeeMxq6TmcCQ8FSjJwnteHVxmwy7E6gE%2BEME1ARLwby3bymrjOW6GvqTK8IHH%2BjvWTSxQE9GOEwqwvEvqkwy%2BwIunYqpZX77gh1MKQeI1DFBFplFEuJc7iCFd0nHzf0Ue4ISFFgODhmkB25fDJc4IOQLrYi%2BVoyPRMaMRqRtVyybMX0b5plefFyxuisEomigKbdFCGUKpUyTUcJiziVcnWqUpDTpXICxif4HJK%2BJDRUQAwpCkJJIt75pD%2BXcMUv7E1wHHqgrNNXnCmVsmZEunTiUGWMDAyj4RFZWhWBmI%2FK8fioOw0GeXxyXFflQcfLzHMuqzIzDHEGnVqYOYabKrFTKQ4LDNLY%2Fr94jKPZW3bcVmpwxVeLwGK3mpkxsun5cjMtNXaQgDgcCYsM7j%2BEE5nCnk9shheizzgSMBs01PGbYmMUOgCU7Ik4jPKD635uAvzXUOb8V3Gmb6LVSpuItW%2Bi090xwvoP%2FZosZ8GwP4CRHOYSqyr8utlAlP0C0z32Uq9yE2TKrDGJE%2FK85sTlmxVpj80npFS1fQtrevs6Ljlz4kNr17Jkv3WUCGuXnX3RbxKDplV0uVZZVg6WcUXY99Bok%2FrzsQKL2uAfJ1cIAitOsvn2pwIypoEWmY7i8c3kI4WV0J64Qb4j%2FOMzbUtC%2FpFhmQfdl2WTIT1k%2BJ5JguM6dbpNeWEdecHkdVHxEJmiAgw6fvkE627AGBAflA6WTfvpvE2O7wK43lMCdaAUrfh1SJTQ%2BLbhv1VNG9e7m3VVMqVsCLoh3W6oF7kBH9yGbbX1GYg60D4PMrVKiLFOevMod98lTX%2FEsbv2ZfK%2BN05nssKnbiyXcKS5xUhTHZR%2FMZsQ0Yuem3j3KxKYvfWkU6gDsXIvrffmZWpR54mp6OZ175v6Fh5sRx4ISmaaTAdGDZrx7I5mmkMmJkGckka0RCwqwwr8pzTH1n%2Byeo3kIP8GRrNGS0%2BZ7xZozDo0cXzjuoUTIjY3tgq5jKSsNtexSQ2STtalbZsCU8uSm2UlaUtPrWZQYDXCd0wfJOVabIUMTJquTJtS0S8OrYLT2P4Ua%2FrXpTTtZuqiw5Yx6a5LmrzoTmnLa3U19i%2B0v2ee3XtM7UaFsepe4QX62mmTavuZDMv68HJfb%2FtldlkuqO6VmYbHC2zkecpDx26W5RduEpjH4Hwap5p5ImVthNkXzo5TvRlYFBrOx6%2BXvLg%2B99frz4OPtw8fPHuf%2F7zyf5qewI8wae8Z6kjFthM5GF7z7gODZG4UCy8PY7f73Ol8YQeUk13wZIyKZqmq4w7bkiFNE3I0ZwefciazljqQwIxRrRXrcHY%2FnYyMYeWKLZX3szvuPU%2BM3MgWE9VVemE4pPYaWsibmy6%2F74aOb6klhcSOTosXsY7s03fYRJxy5Jr0j%2B1WMM%2BcNnl0VTpRSgzhT2P5h9lPLRVDRpSRm%2BkRxnZB25aGT8%2FwP8NEPjmfJtsfsHN6Ifxw%2FwDX7wc%2BKIgr5QzzaNpTKFQrkb4olDZVO9XysIXm%2Bc0C190BBmkGL7YRF%2BhkNkSxY%2BuwhcZD3O%2B9FqBL3rNwRc9lfBFoVYpbg2W3pBo3oRZgJyrsU1eyGq%2B5a0z8EUd0tG3FSGUjkR%2FwR%2F4YgPwxeZViYUvuhrhi0JV4rfifwf4YvOCY%2BGLnk74olByElX6S0YvnhlH1RuOXvJd1ZKBcNyo1biMaVrzmgIvuurAi0IuSvRkdzQoY7FxrQdlfCG5O9BFHeJpOSqTqa1qgS42z2sWZeZqhS6KuX1uO44u6KI6B9eq42KRi15TyEVuIsWOS4AE7zxysXnLZ5GLnk7kolhuEmWgSmeVdMdUA4tkHbnoSiMXVQUMAuTiZ4hDNNt1OVZ4QSuer5ELJKFTaWWaRzvXU%2FUa6GKU62G9o0qB4K%2FqafsVH8IPRCG8ssWLr7d0CtmoYp%2BQdTD6cA%2FivSs%2BjO8aOkVBAsD0IbhDq9%2B2nC7ltyYp2NFlYmxR5UEZPkXMbD5Y7hQ%2BRYWMXEZGLZcfLIm4WB8%2B5ezs92jZdiAWiyZ8ijXqjypf9Yj%2F7FyYRavozoUtid833UpOxbYROYJfza0MrSJmFb%2F52h24yjkBtvWMwbUAVxE%2FHx9SczLoXGqlAK7SpOy1w1XET8dvgV4%2BXqX5SITFq4hKdHojc35PUAlghb3yXG1LC5JFQcsBg2QR%2Bj5R6dVko4fmJHthWBZ1UWauw611BxgvhZluU9AWVxO0xdGBJiiXs0uBtvyuuslCRc7WRhbbokob2Qd%2BpTaS08NfDcuHH%2F72mn37fw%3D%3D
