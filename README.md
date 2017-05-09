//*********** POUR UTILISER LE DOCKERFILE ***********\\

intaller docker:
https://docs.docker.com/engine/installation/

//*********** INSTALL ***********\\

Depuis le dossier où se trouve le dockerfile:
docker build -t c-pool .
Créer un dossier "Coding" dans le home (se sera le dossier de travail)
Dans le dossier:
docker run --name c_pool -it -v "$PWD":/usr/Rendu -w /usr/Rendu c-pool /bin/bash

Voila le container docker est créer et on est dans son shell

Pour quiter:
exit

//*********** LAUNCH ***********\\

Faire
docker ps

Si le container c_pool est afficher dans la liste:
docker exec -i -t c_pool /bin/bash

Si il n'est pas affiché dans la liste:
docker start c_pool
docker exec -i -t c_pool /bin/bash
