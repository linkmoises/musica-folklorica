# Snippets para Lilypond

Esta es una colección de hacks de código para partituras escritas
con lilypond que he ido coleccionando a través del tiempo de 
la documentación oficial así como de la lista de correos y 
lugares como StackOverflow.

## Silencios largos

Me ha funcionado ocasionalmente en las partituras, solo hay que
asegurar que al escribir acordes, los silencios coincidan.

```
	\compressEmptyMeasures
	\override MultiMeasureRest.expand-limit = 2    
	R1*8
```

## Etiquetas de texto

Añade una etiqueta de texto sobre el pentagrama, muy útil para
indicar repeticiones largas o con cambios de posición en la 
partitura.

```
	\mark \markup { \small \italic "D.S. a coda" }
```

## Posicionar etiquetas de texto

Me ha servido ocasionalmente para colocar etiquetas de texto 
sobre el compás. En ocasiones, me ha cambiado la partitura y 
ha convenido usar la etiqueta de texto anclada a la nota sobre 
donde se quiere mostrar.

```
	\after 2 ^\markup { \italic rit. }
```

## Segno

Coloca el símbolo de Segno justo en la barra entre un compás
y otro.

```
	\mark \markup { \small \musicglyph #"scripts.segno" }
```

## Coda

Coloca el símbolo de coda al inicio del compás.

```
	\mark \markup { \small \musicglyph #"scripts.coda" }
```