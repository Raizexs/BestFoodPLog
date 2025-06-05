
# Sistema de Gestión de Calorías para el Restaurante "Mi Mejor Comida"

Este proyecto fue desarrollado como parte de la asignatura **Paradigmas de Programación**, correspondiente al tercer año de la carrera de **Ingeniería en Computación e Informática**.

El objetivo es construir un sistema basado en **programación lógica (Prolog)** que permita calcular y visualizar menús personalizados en base a las calorías de cada plato. Está orientado tanto al control de la dieta por parte de los clientes como a la automatización de combinaciones de menús saludables.

## Objetivos del Proyecto

- Registrar platos clasificados en Entradas, Platos Principales y Postres.
- Asociar cada plato con su valor calórico correspondiente.
- Calcular el total de calorías de un menú específico ingresado por el usuario.
- Mostrar todas las combinaciones posibles de menú que no superen un límite calórico.
- Validar la entrada del usuario y permitirle reintentar ante errores.
- Mostrar los menús disponibles de forma clara y legible.

## Tecnologías Utilizadas

- **Lenguaje**: Prolog
- **Entorno de desarrollo**: SWI-Prolog
- **Plataforma de ejecución**: Consola / Terminal

## Funcionalidades

- Mostrar menú de bienvenida con opciones interactivas.
- Calcular calorías de un menú compuesto por entrada, principal y postre.
- Mostrar combinaciones posibles dentro de un rango de calorías dado.
- Validar que los platos ingresados existan y permitir reintentos.
- Interface estética en consola con separadores y espaciado amigable.

## Interacción Esperada

```prolog
?- consult('ruta/del/archivo/mi_mejor_comida.pl').
?- inicio.
```

Ejemplo de flujo:

```
+--------------------------------------------+
|         BIENVENIDO A "MI MEJOR COMIDA"     |
+--------------------------------------------+
  [1] -> Calcular calorias de un menu especifico
  [2] -> Mostrar combinaciones bajas en calorias
  [3] -> Salir del sistema
Ingrese su opcion (1-3): 1.
```

## Validaciones

- Evita continuar si el plato ingresado no existe.
- Solicita reintentar en caso de error sin cerrar el sistema.
- No requiere caracteres especiales o codificación UTF-8 (formato ANSI).

## Compilación y Ejecución

No requiere compilación. Solo se necesita un entorno compatible con Prolog.

Desde consola:
```prolog
?- consult('mi_mejor_comida.pl').
?- inicio.
```

## Observaciones Finales

Este sistema fue diseñado con un enfoque educativo. Se priorizó la claridad del flujo de datos y la estructura declarativa de la programación lógica. Puede ser extendido en el futuro con almacenamiento persistente, filtros nutricionales o exportación de combinaciones.

## Licencia y Uso

Este proyecto fue creado con fines educativos y puede ser utilizado libremente como referencia para trabajos académicos o aprendizaje personal.

## Autores

Proyecto desarrollado por estudiantes de tercer año de Ingeniería en Informática.

**Colaboradores**:
- c (@Raizexs)
- David Vásquez (@vsqzHK)
