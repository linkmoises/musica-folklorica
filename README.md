# Repositorio de partituras de música folklórica panameña.

## El proyecto 🚀

Este es un repositorio de música folklórica panameña, en esta colección he digitalizado en formato de lilypond varios puntos, cumbias, pasillos y otros géneros del repertorio musical folklórico panameño.

Algunas de estás piezas incluyen solamente la parte melódica de las piezas. Por ejemplo no se incluyen los solos de violín que tienen los puntos al inicio. Otras incluyen los acordes de guitarra acompañantes. Y unas pocas incluyen la letra.

Empecé este proyecto con una piezas que me donaron cuando era estudiante de violín hace 20 años atrás, incluso había algunas a mano que con el tiempo la legibilidad ha disminuido por el deterioro del papel. He hecho mi mejor esfuerzo al tratar de transcribir las partituras para que no se pierdan estas obras.

## ¿Por qué Lilypond? 🎵

La respuesta a esta pregunta es sencilla. Soy usuario de GNU/Linux y suelo preferir los programas que son software libre o que son compatibles con la filosofía Open Source. Es cierto, que hay un montón de alternativas ahí fuera como Sibelius, Finales, etc. Pero ninguna de ellas es posible instalar en las máquinas que uso, por el hecho que solo están disponibles para MacOS o Windows. La otra respuesta a esta pregunta es el costo de las licencias de estos programas.

Me parece también que transcribo más rápido una partitura, viéndola y tecleandola a medida que la leo en lugar de ir haciendo point and click. Después de transcribir un par de partituras, las escribo y al terminar cuando las compilo solo hago las correcciones necesarias.

Lilypond puede parecer atemorizante al principio y más si me ven usándolo (editando con vim desde la terminal). No hay una interfaz gráfica como tal, pues solo es necesario el archivo ly y el compilador que hace la magia. Aunque existe la opción de usar Frescobaldi que le añade una capa gráfica a Lilypond y permite hacer ciertas cosas adicionales que de otro modo requirirían leer en la documentación como escribir x o y accidente musical.

## Flujo de trabajo 🛠️

El primer paso es escanear el documento original para tener una referencia antes que se la coman las polillas o en caso de perder el documento físico, una vez escaneado le asignó la etiqueta *[orig]* dentro del nombre de archivo. A continuación con una plantilla creo el documento donde se escribirá la partitura en formato lilypond, a esta le asigno la etiqueta *[wip]* para estar conciente que se trata de un trabajo en proceso.

En el primer paso transcribo la partitura, luego añado los acordes de guitarra en caso de existir y por último la letra de la canción en caso que este disponible. Una vez completada la pieza, procedo a borrar el documento escaneado original y cambio el nombre de archivo quitando la etiqueta *[wip]*. Queda así disponible el archivo de Lilypond y el PDF generado al final de la compilación.

## Licencia 📄

Estas composiciones son de dominio público. Encontrar una pieza musical de estas a través de los buscadores es extremadamente difícil y la mayor parte del tiempo no se obtienen resultados favorables.

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

Si deseas realizar alguna colaboración, pero no tienes idea de cómo utilizar la notación de lilypond puedes enviarme tu colaboración en la sección de comentarios de github o través del correo moises [arroba] serrano.red ya sea en fotografía o escaneada y la añado al repositorio para quede disponible y sobre la marcha la convierto a formato Lilypond.

Siéntete libre de colaborar con el proyecto para rescatar la memoria musical panameña.
