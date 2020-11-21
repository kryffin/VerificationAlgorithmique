//This file was generated from (Academic) UPPAAL 4.1.4 (rev. 5535), March 2014

/*
On a essay\u00e9 de v\u00e9rifier que le joueur 1 puisse utiliser certaines de ses actions dans l'ordre avant de gagner le combat.
*/
p1.pp_strong_atk == 0 --> p1.pp_paralyze == 0 --> p1.pp_freeze == 0 --> p2m.Lost

/*
possible car si 1 hp restant, on se fait geler puis matraquer par une grosse attaque
*/
E<> p2m.hp == -3

/*
voir la pr\u00e9c\u00e9dente
*/
E<> p1.clk_global == 8

/*
Il existe un chemin le long duquel, un jour, l'horloge globale atteint plus de 8 ut.
[NON SAT]
En effet, on peux attendre 4 ut, puis lancer une attaque puissante, puis \u00eatre fatigu\u00e9 2 ut et se faire paralyser 2 ut de plus
*/
E<> p1.clk_global > 8

/*

*/
E<> p1.clk_global == 4

/*

*/
p1.pp_strong_atk == 0 --> p2m.Lost

/*
Le joueur 1 gagne en utilisant un ordre sp\u00e9cifique
*/
control: A[not(p1m.Lost) U p2m.Lost]

/*

*/
control: A<> p2m.Lost

/*
Mort du joueur 2 alors qu'il a toute sa vie
[NOT SAT]
*/
E<> p2m.Lost and p2m.hp > 0

/*
Dans tous les cas un des joueurs finit par perdre
[SAT] -> trop long
*/
A<> p1m.Lost or p2m.Lost

/*
victoire du joueur 1 sans utiliser de atk sp\u00e9cial
[SAT]
*/
E<> p2m.Lost and p1.pp_freeze == 1 and p1.pp_paralyze == 1 and p1.pp_strong_atk == 1

/*
[SAT]
*/
E<> p2m.Lost and p1.pp_strong_atk == 1

/*
[SAT]
*/
E<> p2m.Lost and p1.pp_paralyze == 1

/*
Victoire du joueur 1 sans utiliser l'attaque freeze
[SAT]
*/
E<> p2m.Lost and p1.pp_freeze == 1

/*
Mort du joueur 2 tandis que le joueur 1 poss\u00e8de toute sa vie
[NOT SAT] -> probl\u00e8me
*/
E<> p2m.Lost and p1m.hp == 10

/*
Mort du joueur 1 tandis que le joueur 2 poss\u00e8de toute sa vie
[NOT SAT] -> probl\u00e8me
*/
E<> p1m.Lost and p2m.hp == 10

/*
Un cas o\u00f9 le joueur 2 gagne avec un point de vie restant
[SAT]
*/
E<> p1m.Lost and p2m.hp == 1

/*
Un cas o\u00f9 le joueur 1 gagne avec un point de vie restant
[SAT]
*/
E<> p2m.Lost and p1m.hp == 1

/*
Possible de finir sur un deadlock n'\u00e9tant la victoire d'aucun des joueurs
[NOT SAT] -> trop long
*/
E<> not p1m.Lost and not p2m.Lost and deadlock

/*
Le joueur 1 gagne et pas l'autre
[SAT]
*/
E<> p2m.Lost and not p1m.Lost

/*
Les deux joueurs perdent
[NOT SAT]
*/
E<> p1m.Lost and p2m.Lost

/*
Victoire du joueur 1 possible 
[SAT]
*/
E<> p2m.Lost

/*
Victoire du joueur 2 possible 
[SAT]
*/
E<> p1m.Lost
