#!/bin/sh

# Chemin vers le fichier index.html
INDEX_FILE="public/index.html"

# Chemin vers le fichier analytictag.html
ANALYTIC_TAG_FILE="analytictag.html"

# Utiliser sed pour insérer le contenu de analytictag.html sous la balise <head> dans index.html
sed -i -e "/<head>/r $ANALYTIC_TAG_FILE" $INDEX_FILE
