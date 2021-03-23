# P5. 3D Scene and Lighting

### Autor: Jonay Suárez Ramírez

## Descripción

En este proyecto se recrea una escena 3D de una habitación (las paredes tienen una textura que provoca una ilusión óptica de profundidad) y una figura 3D flotante. La figura es la escultura egipcia de Nefertiti. (Otras figuras también están disponibles en la carpeta).

Se permite rotar la cámara entorno al model usando el click izquierdo y arrastrar del ratón. También se puede hacer zoom usando la rueda del ratón o click derecho y arrastrar arriba y abajo.

Hay varias opciones de luces ambiente, direccional y de punto omnidireccional. También se pueden cambiar los colores de las luces y las posiciones para iluminar distintas vistas del modelo.

El código está preparado para cargar varios modelos y alternar entre ellos pero por motivos de insuficiencia de recursos no es posible cargarlos juntos. En las líneas 44 y 45 se encuentran las cargas de dichos modelos y estaba planeado alternarlos usando los números del teclado.

## Controles
- `Click izquierdo` y arrastrar para rotar la vista del objeto.
- `Rueda del ratón` o `Click derecho` y arrastrar arriba o abajo para acercarse o alejarse al objeto.
- `A` para alternas los distintos modos de luz ambiental. ( `Blanca`, `Roja`, `Verde`, `Azul` y `Desactivada`. Por defecto `Blanca`)
- `P` para alternar los distintos modos de luz puntual omnidireccional. ( `Seguir a la cámara`, `Quedarse en el sitio`, `Desactivada`. Por defecto `Seguir a la cámara`, esto significa que la luz está donde se situa la cámara)
- `D` para alternar los distintos modos de luz direccional. ( `Seguir a la cámara`, `Quedarse en el sitio`, `Desactivada`. Por defecto `Desactivada`, esto significa que la luz está donde se situa la cámara y se dirige al objeto)
- `C` para cambiar los distintos colores de la luz puntual y direccional. ( `Blanca`, `Roja`, `Verde` y `Azul`. Por defecto `Blanca`)
- `Doble click` para que la cámara vuelva a la posición por defecto.

## Referencias y Herramientas

1. Gif hecho con https://convertio.co/es/.

2. Guión de prácticas de CIU.

3. Documentación online de Processing.

4. Librería cámara: http://mrfeinberg.com/peasycam/

5. Guía sobre luces: https://behreajj.medium.com/3d-models-in-processing-7d968a7cede5

6. Modelo Nefertiti fuente: https://www.myminifactory.com/scantheworld/


## Resultado

![Gif del uso de la aplicación](P5_3DScene.gif)