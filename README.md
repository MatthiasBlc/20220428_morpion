# 20220428_morpion

## 1/ liste des applications:

app.rb => Permet d'orchestrer et lancer le programme.


lib/

board.rb => Ce fichier héberge la class du même nom et a pour but de générer l'apparition de la grille ainsi que son comportement.

boardcase.rb => Ce fichier héberge la class du même nom et a pour but de gérer le comportement d'une case individuellement de la grille.

game.rb => Ce fichier héberge la class du même nom et a pour but de gérer l'organisation globale du jeu.

player.rb => Ce fichier héberge la class du même nom et a pour but de gérer les options à dipositions des joueurs.


---

## 2/ app.rb:
Ce programme permet de lancer une partie de Tic Tac Toe (Morpion) entre deux joueurs humains.

Il suffit de donner les pseudonymes des joueurs en présente et de choisir un symbole (car c'est mieux que de rester bloqué dans le traditionnel "X" et "O") et la partie peut commencer! 

Il ne reste plus qu'à indiquer les coordonnées de la case que l'on souhaite s'attribuer et le tour est joué !

Le premier à aligner trois symboles identiques gagne.