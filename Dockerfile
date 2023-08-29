# Utilisation de l'image Ubuntu la plus récente
FROM ubuntu:latest

# Utilisation de la bonne orthographe pour "maintainer"
LABEL maintainer="Matthieu"

# Mise à jour des référentiels et installation d'Apache
RUN apt-get update && apt-get install -y apache2

# Copie des fichiers du répertoire "html" vers le répertoire du serveur web
COPY html/ /var/www/html/

# Définition du répertoire de travail à l'intérieur du conteneur
WORKDIR /var/www/html

# Commande de démarrage pour exécuter Apache en mode "FOREGROUND"
CMD ["apachectl", "-D", "FOREGROUND"]

# Exposition du port 80 pour les connexions entrantes
EXPOSE 80
