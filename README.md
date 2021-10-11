# Repositorio de partituras de música folklórica y típica panameña.

## El proyecto 🚀

Este es un repositorio de música folklórica panameña, en esta colección he digitalizado en formato de lilypond varios puntos, cumbias, pasillos y otros géneros del repertorio musical folklórico panameño.

Algunas de estás piezas incluyen solamente la parte melódica de las piezas. Por ejemplo no se incluye el paseo (solo de violín) que tienen los puntos al inicio. Otras incluyen los acordes de guitarra acompañantes y unas pocas incluyen la letra.

Empecé este proyecto con una piezas que me donaron cuando era estudiante de violín hace 20 años atrás, incluso hay fotocopias de algunas escritas a mano que con el tiempo la legibilidad ha disminuido por el deterioro del papel. He hecho mi mejor esfuerzo al tratar de transcribir las partituras para que no se pierdan estas obras.

Del mismo modo, me mantengo investigando activamente para mejorar las partituras una vez transcritas. Ya sea si encuentro alguna mejor versión o el paseo de un punto, lo añadiré sobre la original. También incluí en las partituras el año de nacimiento y fallecimiento de los compositores/autores.

## ¿Por qué Lilypond? 🎵

La respuesta a esta pregunta es sencilla. Soy usuario de GNU/Linux y suelo preferir los programas que son software libre o que son compatibles con la filosofía Open Source. Es cierto, que hay un montón de alternativas ahí fuera como Sibelius, Finales, etc. Pero ninguna de ellas es posible instalar en las máquinas que uso, por el hecho que solo están disponibles para MacOS o Windows. La otra respuesta a esta pregunta es el costo de las licencias de estos programas.

Me parece también que transcribo más rápido una partitura, viéndola y tecleandola a medida que la leo en lugar de ir haciendo point and click. Después de transcribir un par de partituras, las escribo y al terminar cuando las compilo solo hago las correcciones necesarias.

Lilypond puede parecer atemorizante al principio y más si me ven usándolo (editando con vim desde la terminal). No hay una interfaz gráfica como tal, pues solo es necesario el archivo ly y el compilador que hace la magia. Aunque existe la opción de usar Frescobaldi que le añade una capa gráfica a Lilypond y permite hacer ciertas cosas adicionales que de otro modo requirirían leer en la documentación como escribir x o y accidente musical.

## Flujo de trabajo 🛠️

El primer paso es escanear el documento original para tener una referencia antes que se la coman las polillas o en caso de perder el documento físico, una vez escaneado le asignó la etiqueta *[orig]* al principio del nombre de archivo. A continuación con una plantilla creo el documento donde se escribirá la partitura en formato lilypond, a esta le asigno la etiqueta *[wip]* al principio del nombre de archivo para estar conciente que se trata de un trabajo en proceso.

En el primer paso transcribo la partitura, luego añado los acordes de guitarra en caso de existir y por último la letra de la canción en caso que este disponible. Una vez completada la pieza, procedo a borrar el documento escaneado original y cambio el nombre de archivo quitando la etiqueta *[wip]*. Queda así disponible el archivo de Lilypond y el PDF generado al final de la compilación.

De algunas partituras hay varias versiones. Esto corresponde al hecho que puedo tener una versión melódica con acordes; y también, una versión para violín y piano por mencionar un ejemplo. A veces puede responder al hecho que tengo la misma partitura escrita de dos maneras diferentes y en escalera diferentes.

## Música panameña 🎻

En el año 2017, el diputado Javier "Patacón" Ortega presentó una iniciativa legislativa para llamar la música popular panameña y de raíz folclórica como pindín. A muchos folcloristas no les agrada el término pues otrora tenía una connotacion peyorativa. Existen otras propuestas para nombre oficial como curacha y guararé; sin embargo, la polémica propuesta no avanzó en sus discusiones en la Asamblea Nacional, así que de manera oficial, aún no existe un nombre.

La música de Panamá, nace de las fusión de diversidad de las etnias hispanas en la época de la conquista y de los negros esclavos que trajeron con ellos. A diferencia de otros países, no es tan notable la influencia de la música de nuestros pueblos nativos. Esto en parte tiene que ver con el exterminio casi total que sufrieron nuestros nativos y su posterior repliegue hacia las profundidades de la selva y la montaña. Aún hoy nuestros grupos nativos son vistos de manera independiente y no con la integración que debería haber en nuestras raíces culturales.

A pesar de la carencia de un nombre para la música panameña, los instrumentos propios de nuestro país si los hay. Tambores de 3 cuñas (pujador y repicador), cajas sin aro, mejorana, socavones, rabeles, violines, guitarras y acordeón solo por mencionar algunos y dicho sea de paso con funciones específicas. Nuestra música más autóctona nace con estos instrumentos e incluso suena mejor cuando se le toca con estos. Las introducciones de instrumentos posteriores (bajos, congas, guitarra eléctrica) altera la esencia misma de la música y producirá un resultado parecido pero no el mismo como fue concebida por su autor.

Una de las máximas folkloristas de nuestro país; Dora Pérez de Zárate, hace la división de la *música folklórica*, cuyo autor se ha perdido en el tiempo, con la *música típica*, que tiene ya un autor conocido. En todo caso, las melodías y temas que hay en este repositorio pertenecen a este último grupo. Otra notable acotación de Dora Pérez de Zárate es en cuanto a la *música popular*, la cual se inspira en la música típica y que aprovecha elementos de fusión de ritmos importados de otros lares.

Independientemente del nombre que se le escoja a nuestra música, existe toda una serie de subgéneros que tienen características regionales. Se tiende a destacar los que nacieron en la península de Azuero como expresiones de nuestra panameñidad, pero no podemos dejar de lado los congos, bullerengues e incluso la música de nuestros grupos nativos. A continuación introduciré brevemente los subgéneros de los cuales tengo al menos una pieza representativa y algunos otros géneros que aunque no nacieron en Panamá, tuvieron grandes exponentes en suelo patrio.

**Bolero**: Género nacido en Cuba en el siglo XIX y popularizado en los años 30/40 del siglo XX. El precursor de este género en Panamá es Ricardo Fábrega y este género está estrechamente vinculado a la letra. El bolero en Panamá puede ser encontrado escrito en compases de 2/4 y 4/4, con un tema A y B en modo menor, en algunos casos modulante, como también el tema B puede ser encontrado en modo mayor.

**Contradanza, polkadanza, polkas**: Son originarios de Europa y nacen en el siglo XVIII, pero se popularizan en el siglo XXI. De ritmo rápido y bailables. En Europa eran para la élite social, en América y en especial Panamá, se hicieron parte del acervo orejano.

**Cumbia**: Es uno de los géneros musicales más difundidos en el istmo y con claras raíces africanas (por los tambores de cuñas), en su expresión más autóctona se toca con rabel (violín criollo de 3 cuerdas ya casi extinto). De manera más tradicional se ejecuta también con violín o acordeón. Consta de cerca de 30 variantes regionales en nuestro istmo que varían según disposición de compases o formas de baile.

**Denesa**: Es una danza derivada de la mejorana, pero esta respecto a su contraparte se baila en salón y no al aire libre. La pongo como un subgénero musical ya que no existe una sola pieza que se llame denesa. Existen otras denesas que han sido dedicadas por ejemplo a Petita Escobar y Elisa de Céspedes.

**Pasillo**:

**Punto**:

**Tamborera**: Este es un género que combina el ritmo del son cubano y el tamborito panameño. Fue creado por Ricardo Fábrega en la primera mitad del siglo XX quien trataba de traer la música popular de aquel entonces a los salones de alta sociedad como el Club Unión.

**Tamborito**:

## Licencia 📄

Estas composiciones son de dominio público. Encontrar una pieza musical de estas a través de los buscadores es extremadamente difícil y la mayor parte del tiempo no se obtienen resultados favorables. Por este motivo, he decidido compartir este repositorio bajo la Licencia Creative Commons CC BY 4.0.

Shield: [![CC BY 4.0][cc-by-shield]][cc-by]

Este repositorio está bajo una
[Licencia Creative Commons Atribución 4.0 Internacional][cc-by].

[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: https://creativecommons.org/licenses/by/4.0/deed.es
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg

## Agradecimientos 📢

En esta sección quiero agradecer a las personas que de una manera u otra han aportado su granito de arena al proyecto.

* **Lia Hernández Pérez** - *Por la orientación legal del contenido de este repositorio* - [@liabogadigital](https://twitter.com/liabogadigital/). Lia es especialista en derecho digital y fundadora del [IPANDETEC](https://www.ipandetec.org/)

## Contribuciones ✒️

Si deseas realizar alguna colaboración, pero no tienes idea de cómo utilizar la notación de lilypond puedes enviarme tu colaboración en la sección de comentarios de github o través del correo moises [arroba] serrano.red ya sea en fotografía o escaneada y la añado al repositorio para quede disponible y en cuanto tenga tiempo (en mi caso escasea...) la convierto a formato Lilypond con su respectivo PDF.

Siéntete libre de colaborar con este proyecto para rescatar la memoria musical panameña.
