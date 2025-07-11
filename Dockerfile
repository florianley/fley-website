# Étape 1 : Utiliser l'image de base Hugomods Hugo
FROM hugomods/hugo:0.128.0 as build


# Définir le répertoire de travail
WORKDIR /src

# Copier les fichiers du répertoire courant dans le conteneur
COPY . .

# Exécuter les commandes Hugo et npmmpui execute le script pour insérer les balises google analytics
RUN hugo mod tidy && \
    hugo mod npm pack && \
    npm install && \
    hugo && \
    ls -la /src/public && \
    ./google_analytic_update.sh

# Étape 2 : Utiliser Nginx pour servir les fichiers générés
FROM nginx:alpine

# Copier le dossier public généré par Hugo dans le dossier par défaut de Nginx
COPY --from=build /src/public /usr/share/nginx/html

# Exposer le port 80 pour accéder au serveur Nginx
EXPOSE 80

# Commande pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
