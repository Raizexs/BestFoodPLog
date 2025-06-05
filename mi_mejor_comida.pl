
% --- Base de platos ---

entrada(paella, 200).
entrada(gazpacho, 150).
entrada(pasta, 300).
entrada(ensalada_cesar, 180).
entrada(sopa_verduras, 120).

principal(filete_cerdo, 400).
principal(pollo_asado, 280).
principal(bistec_a_lo_pobre, 500).
principal(trucha, 160).
principal(bacalao, 300).
principal(salmon_a_la_plancha, 350).
principal(lasagna, 450).

postre(flan, 200).
postre(naranja, 50).
postre(nueces, 500).
postre(yogurt, 100).
postre(helado, 250).


% --- Menu principal ---

inicio :-
    nl, nl,
    write('+--------------------------------------------+'), nl,
    write('|         BIENVENIDO A "MI MEJOR COMIDA"     |'), nl,
    write('+--------------------------------------------+'), nl,
    menu_principal.

menu_principal :-
    nl,
    write('Seleccione una opcion:'), nl,
    write('----------------------------------------------'), nl,
    write('  [1] -> Calcular calorias de un menu especifico'), nl,
    write('  [2] -> Mostrar combinaciones bajas en calorias'), nl,
    write('  [3] -> Salir del sistema'), nl,
    write('----------------------------------------------'), nl,
    write('Ingrese su opcion (1-3): '), read(Opcion),
    ejecutar_opcion(Opcion).

ejecutar_opcion(1) :-
    nl, write('> MODO: Calculo de Calorias Personalizado'), nl,
    calcular_menu,
    menu_principal.

ejecutar_opcion(2) :-
    nl, write('> MODO: Combinaciones bajas en calorias'), nl,
    mostrar_combinaciones_bajas,
    menu_principal.

ejecutar_opcion(3) :-
    nl, write('Gracias por visitar "Mi Mejor Comida"!'), nl.

ejecutar_opcion(_) :-
    nl, write('Opcion no valida. Intente nuevamente.'), nl,
    menu_principal.


% --- Calculo de calorias ---

calcular_menu :-
    nl,
    write('--- CALCULO DE CALORIAS ---'), nl,
    mostrar_entradas,
    repetir_leer_entrada(_, CalE),
    mostrar_principales,
    repetir_leer_principal(_, CalP),
    mostrar_postres,
    repetir_leer_postre(_, CalD),
    Total is CalE + CalP + CalD,
    nl,
    format('Total de calorias del menu: ~w~n', [Total]), nl.

mostrar_entradas :-
    nl,
    write('Entradas disponibles: paella, gazpacho, pasta, ensalada_cesar, sopa_verduras'), nl.
mostrar_principales :-
    nl,
    write('Platos principales: filete_cerdo, pollo_asado, bistec_a_lo_pobre, trucha, bacalao, salmon_a_la_plancha, lasagna'), nl.
mostrar_postres :-
    nl,
    write('Postres: flan, naranja, nueces, yogurt, helado'), nl.

repetir_leer_entrada(E, C) :-
    nl,
    write('Ingrese la entrada: '), read(E1),
    (entrada(E1, C1) -> E = E1, C = C1 ;
     write('Entrada invalida. Intente nuevamente.'), nl,
     repetir_leer_entrada(E, C)).

repetir_leer_principal(P, C) :-
    nl,
    write('Ingrese el principal: '), read(P1),
    (principal(P1, C1) -> P = P1, C = C1 ;
     write('Principal invalido. Intente nuevamente.'), nl,
     repetir_leer_principal(P, C)).

repetir_leer_postre(P, C) :-
    nl,
    write('Ingrese el postre: '), read(P1),
    (postre(P1, C1) -> P = P1, C = C1 ;
     write('Postre invalido. Intente nuevamente.'), nl,
     repetir_leer_postre(P, C)).


% --- Mostrar combinaciones por debajo del limite ---

mostrar_combinaciones_bajas :-
    nl,
    write('--- MENUS BAJOS EN CALORIAS ---'), nl,
    write('Ingrese el maximo de calorias deseado: '), read(Limite),
    nl,
    write('Combinaciones disponibles con menos de '), write(Limite), write(' calorias:'), nl, nl,
    entrada(E, CalE),
    principal(P, CalP),
    postre(D, CalD),
    Total is CalE + CalP + CalD,
    Total =< Limite,
    format('* Entrada: ~w (~w cal)~n', [E, CalE]),
    format('  Principal: ~w (~w cal)~n', [P, CalP]),
    format('  Postre: ~w (~w cal)~n', [D, CalD]),
    format('  TOTAL: ~w calorias~n~n', [Total]),
    fail.

mostrar_combinaciones_bajas.
