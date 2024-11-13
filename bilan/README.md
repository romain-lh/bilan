pour executer le script nous allons avoir desoin d'une debian 12 

ensuite une fois le script dans notre debian il est important de lui donner 
les droits necssaires pour s'installer avec la commande : 

- chmod +x install-docker.sh

pour que le script fonctionne nous allons installer sudo avec la commande: 

- apt install sudo -y

install-docker.sh correspond au nom du fichier 

et il nous reste plus qu'a executer le programme avec la commande:

- ./install-docker.sh 

pour installer wordpress nous allons nous rendre sur le site docker hub 
rechercher wordpress ce qui va nous donner la commande: 

- docker pull word 

une fois la commande effectuer nous allons tout simplement rechercher l'image
avec la commande: 

- docker images

et pour lancer notre wordpress nous allons utiliser la commande 

- docker run -p 8083:80 wordpress 

8083:80 correspond au port que l'on veut definir 
wordpress correspond a l'image que nous avons trouver 

il nous reste plus qu'a nous rendre sur un naviateur afin de mettre 

- ip de la debian:8083

exemple : 192.168.20.108:8083


nous allons maintenant pousser notre projet sur github pour se faire nous allons creer une clef ssh avec la commande : 

ssh-keygen 

ensuite nous allons copier la clef avec la commande: 

cat  ~/.ssh/id_rsa.pub

avec cette clef nous allons la definir dans git hub pour se faire nous allons nous rendre dans 

settings 
ssh and gpg 

toujours dans github nous allons maintenant nous rendre dans le home pour creer un top repositories une fois la création faite il nous suffit de taper les commande qu’il sont donné 
