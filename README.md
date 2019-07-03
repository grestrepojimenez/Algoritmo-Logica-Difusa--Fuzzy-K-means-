

<p align="center"><b>  Algoritmo Lógica Difusa - Fuzzy K means </b></p>

Algoritmo desarrollado en MATLAB con el fin de segmentar una población mediante lógica difusa.

Fuzzy k mean es una popular y poderosa técnica de clustering; este método es  más formalizado estadísticamente y descubre los grupos flexibles donde un punto en particular puede pertenecer a más de un grupo con cierta probabilidad.  (Apache Foundation, 2018)


##Implementación

En este caso tenemos 4 tipos de medicina con dos atributos PH y Peso:
 Peso, Ph:
[  1 1;   2 1 ;  4 3  ;  5 4]

Se eligen inicialmente los centroides de las dos primeras medicinas es decir (1,1) y (2,1).
Se calcula la distancia de cada objeto a los centroides utilizando la distancia euclidiana, hallando una matriz de distancias:
D= [0.00  1.00  3.61 5.00;  1.00 0.00 2.83 4.24]
<b>Agrupación por criterio de mínima distancia: </b>
Se asigna a un grupo 1 o 1, cada elemento teniendo en cuenta el minimo error de partición de cada elemento en cada grupo, entonces la medicina A se asigna al grupo 1 (con centroide en (1,1)) y las medicinas B, C y D al grupo 2 (con centroide en (2,1)).
G= [1 0 0 0 ; 0 1 1 1]
Iteración 1, determinar centroides: Conociendo los miembros de los grupos, se vuelve a calcular el centroide de cada grupo y la matriz de distancias. Como el grupo 1 tiene sólo un miembro el centroide de ese grupo permanece en (1,1). El grupo 2 tiene ahora 3 miembros, por lo que el nuevo centroide es:

C2= ((2+4+5)/3,  (1+3+4)/3) = (11/3,  8/3) 



##Referencias:

https://mahout.apache.org/users/clustering/fuzzy-k-means.html 
<br>
https://en.wikipedia.org/wiki/Fuzzy_clustering


