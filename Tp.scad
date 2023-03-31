// Parámetros
ancho_casa = 50; // Ancho de la casa
largo_casa = 80; // Largo de la casa
alto_casa = 50; // Alto de la casa
alto_techo = 30; // Alto del techo
inclinacion_techo = 0.5; // Inclinación del techo

// Creación de la casa
paredes = cube([ancho_casa, largo_casa, alto_casa]);

// Creación del techo
techo = polygon([[0,0],[ancho_casa,0],[ancho_casa*(1+inclinacion_techo),largo_casa/2],[ancho_casa,largo_casa],[0,largo_casa]]);
techo = linear_extrude(height=alto_techo) techo;

// Creación de la puerta y las ventanas
puerta = cube([ancho_casa/4, largo_casa/2, alto_casa/2]);
ventana1 = cube([ancho_casa/4, largo_casa/4, alto_casa/2]);
ventana2 = cube([ancho_casa/4, largo_casa/4, alto_casa/2]);
puerta = translate([ancho_casa/2-ancho_casa/8,0,0]) puerta;
ventana1 = translate([0,largo_casa/4,0]) ventana1;
ventana2 = translate([0,largo_casa/2+largo_casa/8,0]) ventana2;

// Unión de las piezas
casa = paredes - puerta - ventana1 - ventana2 + techo;



// Visualización
render(casa);
