//This file was generated from (Academic) UPPAAL 4.1.4 (rev. 5535), March 2014

/*
il existe un chemin un jour o\u00f9 Character2 meurt
doit \u00eatre satisfaite
*/
E<> Character2.Mort

/*
il existe un chemin o\u00f9 un jour Character meurt
doit \u00eatre satisfaite
*/
E<> Character.Mort

/*
tout chemin m\u00e8ne un jour \u00e0 la Fin de Character2
ne doit pas \u00eatre satisfaite
*/
A<> Character2.Mort

/*
tout chemin m\u00e8ne un jour \u00e0 la fin de Character
ne doit pas \u00eatre satisfaite !
*/
A<> Character.Mort
