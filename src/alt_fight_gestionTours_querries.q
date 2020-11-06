//This file was generated from (Academic) UPPAAL 4.1.4 (rev. 5535), March 2014

/*
il existe un chemin o\u00f9 le joueur 2 meurt
doit \u00eatre satisfaite
*/
E<> Gestionnaire_Vie.mort_j2

/*
il existe un chemin o\u00f9 le joueur 1 meurt
doit \u00eatre satisfaite
*/
E<> Gestionnaire_Vie.mort_j1

/*
tout chemin m\u00e8ne un jour \u00e0 la mort du joueur 2
ne doit pas \u00eatre satisfaite
*/
A<> Gestionnaire_Vie.mort_j2

/*
tout chemin m\u00e8ne un jour \u00e0 la mort du joueur 1
ne doit pas \u00eatre satisfaite !
*/
A<> Gestionnaire_Vie.mort_j1
