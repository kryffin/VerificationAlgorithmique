# Vérification Algorithmique

Bonjour

## 19/11/2020

### Accompli (Emilien)

Modélisation avec timers du combat en 1v1.

### Retours (Niko)

Alors je ne comprend pas certaines choses et je te les décris ici, pour pas oublier et en reparler plus tard.
* Pourquoi l'état Récupération est-il urgent ? Techniquement si tu met la condition mauve dessus il partira obligatoirement quand elle sera remplie (tu as fait l'inverse d'ailleurs j'ai l'impression, je peux me tromper)
* Paralyser -> Paralysé (ou Paralyse), c'est important
* Sinon je comprend bien l'histoire des cooldowns (genre 4 pour Cage-Eclair, 2 pour une attaque basique, 3 pour Blizzard, etc)
* J'ai bien compris que l'état Recuperation est pour attendre après la grosse attaque, reprendre son souffle, même si on aurait pu juste mettre des conditions sur les autres transitions, c'est ok en vrai
* Dans Etat_Joueur : Geler -> Gelé (ou Gele), c'est important !
* Intéressant de se prendre plus de dégâts quand on est gelé
* Si j'ai bien compris être gelé ne nous empêche pas de bouger comme la paralysie, juste on se prend plus de dégâts ? Si c'est le cas on pourrais ajouter un truc, genre se faire geler remet tous les cooldowns à 0 (donc dans notre modélisation ça fait que le joueur doit de nouveau attendre pour jouer)
* Me tape pas ok c'est juste une idée..
* Sinon j'aime bien ce que tu as fait, je vais voir les vérifications vite fait...
* Ah bah c'était rapide, il y en a pas encore (ou elle ne se sont pas push ?)
* Et pour revenir sur ton message *Bah c'est pas une erreur juste que ma modelisation n'est pas ce qu'on veut car provoque des deadlock*, moi je maintiens qu'avoir un **deadlock** n'est pas grave, c'est ce que la prof a dit à Matthias.
* Après réflexion tu disais peut être qu'il y a des **deadlock** intempestifs ? je vais checker au cas où.
* Pareil pour Geler dans Etat_Joueur, je comprends pas pourquoi tu le met en urgent, c'est pour que ce soit la première transition faite ?
* J'ai l'impression que ça **deadlock** quand à un moment t, plus personne peut rien faire, à vérifier
* J'ai testé avec Recuperation et Paralyser NON-urgent chez les deux joueurs, même résultat
* Alors chez moi le problème arrive souvent (pour ne pas dire tout le temps) quand les joueurs sont simultanément dans Recuperation et/ou Paralyser