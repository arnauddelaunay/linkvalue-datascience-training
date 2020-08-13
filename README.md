## Machine Learning 101 ##

Ce repo contient un ensemble de notebook "à trous" ordonnées.

## Contenu de la formation

[Lien vers l'ensemble des slides de la formation](https://docs.google.com/presentation/d/1UkE6inFQK_Y0cv-yHPYJ0JjxtAihAPQDoY0HYbeL3Js/edit?usp=sharing)

## Extensions à ajouter
Les notebooks tournent avec des extensions jupyter notebook.
Quand nous aurons accès à jupyter (petit 3. de la formation), nous devrons activer certaines extensions.

Pour cela, il faudra aller dans l'onglet __Nbextensions tab__ et cocher les cases suivantes :
+ `Exercice2`
+ `ExecuteTime`
+ `highlighter`
+ `Table of Contents (2)`

## Installation via Docker

__Construire l'image__

```
docker build -t lv-training-ml101 .
```

__Lancer__

```
docker run -d -p 8888:8888 -v $(pwd):/home/jupyter/notebooks lv-training-ml101
```

__Checker le container id__

```
docker ps
```

__Pour bosser__

Aller sur http://127.0.0.1:8888

Pour retrouver le token du notebook, exécuter la commande :
```
docker logs <container_id>
```

__A la fin__

```
docker stop <container_id>
```

## Installation via virtualenv

Vérifier que Python 3.5 ou 3.6 sont bien installés :

```
python3 --version
```

Sinon, ils sont disponibles ici en téléchargement [here](https://www.python.org/downloads/release/python-368/).

Si tu n'as pas [virtualenv](https://pypi.org/project/virtualenv/) d'installé, tape :

```
pip3 install virtualenv
```

Puis exécute :
```
virtualenv --python=python3.6 lv-training-ml101
source ./lv-training-ml101/bin/activate
```

Installer les requirements and lancer les notebooks:

```
pip3 install --upgrade -r requirements.txt
jupyter contrib nbextension install --user
jupyter nbextensions_configurator enable --user
jupyter notebook
```

Pour quitter le virtualenv:

```
deactivate
```

Pour supprimer le virtualenv:

```
rm -rf lv-training-ml101
```




## Sommaire de la formation

1. Introduction : à quoi sert la Data Science ?
2. Exemples de projets Data Science chez LV
3. Mise en place de l'environnement technique
4. Analyse de données simple et visuelle. Production d'insights.
5. Présentation d'un premier modèle abstrait
6. Premier modèle linéaire à deux variables
7. Régression : modèle linéaire puis non linéaire
8. Features engineering
9. Arbre de décision avec plus de variables que le modèle n°6
10. Régression logistique avec plus de variables que le modèle n°6. sur le nombre d'étoiles et comparaison avec le modèle n° 6
11. KNN pour la régression & histoire du KMeans. Avantages et Inconvénients. 
