// Ejercicio 1
// Entrada
// se definie variables 
Función CalcularCostoColas
	Definir cantidadColas Como Entero
	Definir costoPorUnidad Como Real
	Definir totalSinIVA Como Real
	Definir IVA Como Real
	Definir totalAPagar Como Real
	Escribir 'Ingrese la cantidad de colas compradas: '
	Leer cantidadColas
	// se usa una condicon de si y SiNo
	// Proceso
	Si cantidadColas>23 Entonces
		costoPorUnidad <- 0.50 // se muestra en pantalla al usuario para que digite una accion
	SiNo // se guarda la cantidad digitada por el usuario
		costoPorUnidad <- 1.20
	FinSi // si la cantidad de colas es mayor a 23 se ara un descuento del 0.50 MOD 
	// se prosesa el resulatado
	totalSinIVA <- cantidadColas*costoPorUnidad
	IVA <- totalSinIVA*0.12 // si la cantidad de colas es menor a 23 se ara un descuento del 1.20 MOD 
	totalAPagar <- totalSinIVA+IVA
	// salida
	// se muestran resulatdos en pantalla
	Escribir 'Cantidad comprada: ', cantidadColas
	Escribir 'Costo por unidad: $', costoPorUnidad
	Escribir 'Total sin IVA: $', totalSinIVA
	Escribir 'IVA: $', IVA
	Escribir 'Total a pagar: $', totalAPagar
FinFunción

// Ejercicio 2
// Entrada
// Se definen variables
Función AplicarDescuentoTrajes
	Definir precioTraje Como Real
	Definir precioFinal Como Real
	Escribir 'Ingrese el precio del traje: '
	Leer precioTraje
	// Proceso
	// se usa una condicon de si y SiNo
	Si precioTraje>2500 Entonces
		precioFinal <- precioTraje-(precioTraje*0.15) // se muestra en pantalla al usuario para que digite una accion
	SiNo // se guarda la cantidad digitada por el usuario
		precioFinal <- precioTraje-(precioTraje*0.08)
	FinSi // si el precio del traje es mayor a 2500$ tonses se ara un descuento 0.15
	// salida
	Escribir 'El precio final del traje es: $', precioFinal
FinFunción // si el precio del traje es menor a 2500$ tonses se ara un descuento del 0.08 MOD 

// Ejercicio 3
// Entrada
// Se definen variables
Función CalcularCostoViaje
	Definir cantidadAlumnos Como Entero // se muestra resultado en pantalla
	Definir costoAlumno Como Real
	Definir costoTotal Como Real
	Escribir 'Ingrese la cantidad de alumnos: '
	Leer cantidadAlumnos
	// Proceso
	// se usa una condicon de si y SiNo
	Si cantidadAlumnos>=100 Entonces
		costoAlumno <- 65.0 // se muestra en pantalla al usuario para que digite una accion
		costoTotal <- cantidadAlumnos*costoAlumno // se guarda la cantidad digitada por el usuario
	SiNo
		Si cantidadAlumnos>=50 Y cantidadAlumnos<=99 Entonces
			costoAlumno <- 70.0
			costoTotal <- cantidadAlumnos*costoAlumno
		SiNo
			Si cantidadAlumnos>=30 Y cantidadAlumnos<=49 Entonces
				costoAlumno <- 95.0
				costoTotal <- cantidadAlumnos*costoAlumno
			SiNo
				costoAlumno <- 0.0
				costoTotal <- 4000.0
			FinSi
		FinSi
	FinSi
	Escribir 'El pago a la compañía de autobuses es: $', costoTotal
	Escribir 'El costo por alumno es: $', costoAlumno
FinFunción

// Ejercicio 4
// Entrada
// Se definen las variables "numeroCita", "costoCita" y "montoTotalPagado".
// Se solicita al usuario que ingrese el número de cita.
// Proceso
// Si el número de cita es menor o igual a 3, el costo de la cita es de $200.00; si no, se verifica si el número de cita es menor o igual a 5, en cuyo caso el costo de la cita es de $150.00; si no, se verifica si el número de cita es menor o igual a 8, en cuyo caso el costo de la cita es de $100.00; si no, el costo de la cita es de $50.00.
// Se calcula el monto total pagado por el tratamiento utilizando la fórmula: (200.003)+(150.002)+(100.00*3)+((numeroCita-8)*50.00)
// Salida
// Se muestra en pantalla el costo de la cita y el monto total pagado por el tratamiento.
Función calcularcostoconsulta
	Definir numeroCita Como Entero
	Definir costoCita Como Real
	Definir montoTotalPagado Como Real
	Escribir 'Ingrese el número de cita: '
	Leer numeroCita
	Si numeroCita<=3 Entonces
		costoCita <- 200.00
	SiNo
		Si numeroCita<=5 Entonces
			costoCita <- 150.00
		SiNo
			Si numeroCita<=8 Entonces
				costoCita <- 100.00
			SiNo
				costoCita <- 50.00
			FinSi
		FinSi
	FinSi
	montoTotalPagado <- (200.00*3)+(150.00*2)+(100.00*3)+((numeroCita-8)*50.00)
	Escribir 'Costo de la cita: $', costoCita
	Escribir 'Monto total pagado por el tratamiento: $', montoTotalPagado
FinFunción

// Ejercicio 5
// ENTRADA
// Se definen las variables "cantidadProductos", "precioUnitario", "descuentoInicial", "totalSinDescuentoAdicional", "descuentoAdicional" y "totalAPagar".
// Se solicita al usuario que ingrese la cantidad de productos comprados y el precio unitario del producto.
// Proceso
// Si la cantidad de productos comprados es mayor a 19, el descuento inicial es del 10 MOD  sobre el precio unitario; si no, el descuento inicial es del 20 MOD  sobre el precio unitario.
// Se calcula el total sin descuento adicional utilizando la fórmula: (precioUnitario-descuentoInicial)*cantidadProductos.
// Se calcula el descuento adicional utilizando la fórmula: totalSinDescuentoAdicional*0.05.
// Se calcula el total a pagar utilizando la fórmula: totalSinDescuentoAdicional-descuentoAdicional.
// SALIDA
// Se muestran en pantalla la cantidad comprada, el precio original por unidad, el descuento inicial, el total sin descuento adicional, el descuento adicional y el total a pagar.
Función CalcularDescuentosSupermercado
	Definir cantidadProductos Como Entero
	Definir precioUnitario, descuentoInicial,totalSinDescuentoAdicional, descuentoAdicional, totalAPagar  Como Real

	Escribir 'Ingrese la cantidad de productos comprados: '
	Leer cantidadProductos
	Escribir 'Ingrese el precio unitario del producto: '
	Leer precioUnitario
	Si cantidadProductos>19 Entonces
		descuentoInicial <- precioUnitario*0.1
	SiNo
		descuentoInicial <- precioUnitario*0.2
	FinSi
	totalSinDescuentoAdicional <- (precioUnitario-descuentoInicial)*cantidadProductos
	descuentoAdicional <- totalSinDescuentoAdicional*0.05
	totalAPagar <- totalSinDescuentoAdicional-descuentoAdicional
	Escribir 'Cantidad comprada: ', cantidadProductos
	Escribir 'Precio original por unidad: $', precioUnitario
	Escribir 'Descuento inicial: $', descuentoInicial
	Escribir 'Total sin descuento adicional: $', totalSinDescuentoAdicional
	Escribir 'Descuento adicional: $', descuentoAdicional
	Escribir 'Total a pagar: $', totalAPagar
FinFunción

// Ejercicio 6
// Entrada
// Se definen las variables "tipoAutobus", "precioPorKilometro", "distanciaKilometros", "cantidadPersonas", "costoTotal" y "costoPorPersona".
// Proceso 
// Se solicita al usuario que ingrese el tipo de autobús (A, B o C), la distancia en kilómetros y la cantidad de personas.
// Si la cantidad de personas es mayor o igual a 20, se verifica el tipo de autobús ingresado y se asigna el precio por kilómetro correspondiente.
// Se calcula el costo total del viaje utilizando la fórmula: precioPorKilometrodistanciaKilometroscantidadPersonas.
// Se calcula el costo por persona utilizando la fórmula: costoTotal/cantidadPersonas.
// Salida
// Se muestran en pantalla el costo total del viaje y el costo por persona.
// Si la cantidad de personas es menor a 20, se muestra en pantalla un mensaje indicando que debe haber un mínimo de 20 personas para presupuestar el viaje.
Función CalcularCostoViaje2
	Definir tipoAutobus Como Cadena
	Definir precioPorKilometro, distanciaKilometros, costoTotal, costoPorPersona  Como Real
	Definir cantidadPersonas Como Entero
	Escribir 'Ingrese el tipo de autobús (A, B o C): '
	Leer tipoAutobus
	Escribir 'Ingrese la distancia en kilómetros: '
	Leer distanciaKilometros
	Escribir 'Ingrese la cantidad de personas: '
	Leer cantidadPersonas
	Si cantidadPersonas>=20 Entonces
		Si tipoAutobus='A' Entonces
			precioPorKilometro <- 2.0
		SiNo
			Si tipoAutobus='B' Entonces
				precioPorKilometro <- 2.5
			SiNo
				Si tipoAutobus='C' Entonces
					precioPorKilometro <- 3.0
				FinSi
			FinSi
		FinSi
		costoTotal <- precioPorKilometro*distanciaKilometros*cantidadPersonas
		costoPorPersona <- costoTotal/cantidadPersonas
		Escribir 'El costo total del viaje es: $', costoTotal
		Escribir 'El costo por persona es: $', costoPorPersona
	SiNo
		Escribir 'Debe haber un mínimo de 20 personas para presupuestar el viaje.'
	FinSi
FinFunción

// Ejercicio 7
// ENTRADA
// Se definen las variables "tipoUva", "TAMANOUVA", "precioInicial" y "ganancia".
// Se solicita al usuario que ingrese el tipo de uva (A o B) y el tamaño de uva (1 o 2).
// Proceso 
// Se verifica el tipo de uva ingresado y se asigna el precio inicial correspondiente.
// Se ajusta el precio inicial según el tamaño de uva ingresado.
// Se calcula la ganancia obtenida utilizando la fórmula: precioInicial.
// SALIDA
// Se muestra en pantalla la ganancia obtenida.
Función CalcularGananciaUvas
	Definir tipoUva Como Cadena
	Definir TAMANOUVA Como Entero
	Definir precioInicial Como Real
	Definir ganancia Como Real
	Escribir 'Ingrese el tipo de uva (A o B): '
	Leer tipoUva
	Escribir 'Ingrese el tamaño de uva (1 o 2): '
	Leer TAMANOUVA
	Si tipoUva='A' Entonces
		precioInicial <- 1.0
	SiNo
		Si TAMANOUVA=1 Entonces
			precioInicial <- precioInicial+0.2
		SiNo
			Si TAMANOUVA=2 Entonces
				precioInicial <- precioInicial+0.3
			SiNo
				Si tipoUva='B' Entonces
					precioInicial <- 1.0
				SiNo
					Si TAMANOUVA=1 Entonces
						precioInicial <- precioInicial-0.3
					SiNo
						Si TAMANOUVA=2 Entonces
							precioInicial <- precioInicial-0.5
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	ganancia <- precioInicial
	Escribir 'La ganancia obtenida es: $', ganancia
FinFunción

// Ejercicio 8
// Se define la cantidad de lápices y el precio por lápiz.
// Se muestra un mensaje para que el usuario ingrese la cantidad de lápices.
// Se lee la cantidad de lápices ingresados por el usuario y se establece el precio por lápiz según la cantidad ingresada. Si la cantidad es mayor a 1000, el precio por lápiz es 1.0; de lo contrario, el precio por lápiz es 1.5.
// Se calcula el total a pagar multiplicando la cantidad de lápices por el precio por lápiz.
// Se muestra el precio por cada lápiz y el total a pagar.
Función CalcularPrecioLapices
	Definir cantidadLapices Como Entero
	Definir precioLapiz Como Real
	Definir totalPagar Como Real
	Escribir 'Ingrese la cantidad de lápices: '
	Leer cantidadLapices
	Si cantidadLapices>1000 Entonces
		precioLapiz <- 1.0
	SiNo
		precioLapiz <- 1.5
	FinSi
	totalPagar <- cantidadLapices*precioLapiz
	Escribir 'El precio por cada lápiz es: ', precioLapiz
	Escribir 'El total a pagar es: ', totalPagar
FinFunción

// Ejercicio 9
// ENTRADA
// Definir claveArticulo Como Entero
// Definir costoMateriaPrima Como Real
// Definir costoManoDeObra Como Real
// Definir gastosFabricacion Como Real
// Definir costoProduccion Como Real
// Definir precioVenta Como Real
// Escribir 'Ingrese la clave del artículo (1, 2, 3, 4, 5 o 6): ?
// Leer claveArticulo
// Escribir 'Ingrese el costo de la materia prima: ?
// Leer costoMateriaPrima
// Proceso 
// Si claveArticulo=3 O claveArticulo=4 Entonces costoManoDeObra <- 0.75costoMateriaPrima SiNo Si claveArticulo=1 O claveArticulo=5 Entonces costoManoDeObra <- 0.80costoMateriaPrima SiNo costoManoDeObra <- 0.85*costoMateriaPrima FinSi FinSi
// Si claveArticulo=2 O claveArticulo=5 Entonces gastosFabricacion <- 0.30costoMateriaPrima SiNo Si claveArticulo=3 O claveArticulo=6 Entonces gastosFabricacion <- 0.35costoMateriaPrima SiNo gastosFabricacion <- 0.28*costoMateriaPrima FinSi FinSi
// costoProduccion <- costoMateriaPrima+costoManoDeObra+gastosFabricacion
// precioVenta <- costoProduccion+(0.45*costoProduccion)
// salida
// Escribir 'Clave del artículo: ', claveArticulo
// scribir ?Precio de venta: $?, precioVenta
Función CalcularPreciosVenta
	Definir claveArticulo Como Entero
	Definir costoMateriaPrima Como Real
	Definir costoManoDeObra Como Real
	Definir gastosFabricacion Como Real
	Definir costoProduccion Como Real
	Definir precioVenta Como Real
	Escribir 'Ingrese la clave del artículo (1, 2, 3, 4, 5 o 6): '
	Leer claveArticulo
	Escribir 'Ingrese el costo de la materia prima: '
	Leer costoMateriaPrima
	Si claveArticulo=3 O claveArticulo=4 Entonces
		costoManoDeObra <- 0.75*costoMateriaPrima
	SiNo
		Si claveArticulo=1 O claveArticulo=5 Entonces
			costoManoDeObra <- 0.80*costoMateriaPrima
		SiNo
			costoManoDeObra <- 0.85*costoMateriaPrima
		FinSi
	FinSi
	Si claveArticulo=2 O claveArticulo=5 Entonces
		gastosFabricacion <- 0.30*costoMateriaPrima
	SiNo
		Si claveArticulo=3 O claveArticulo=6 Entonces
			gastosFabricacion <- 0.35*costoMateriaPrima
		SiNo
			gastosFabricacion <- 0.28*costoMateriaPrima
		FinSi
	FinSi
	costoProduccion <- costoMateriaPrima+costoManoDeObra+gastosFabricacion
	precioVenta <- costoProduccion+(0.45*costoProduccion)
	Escribir 'Clave del artículo: ', claveArticulo
	Escribir 'Precio de venta: $', precioVenta
FinFunción

// Ejercicio 10
// ENtrada
// Se definen tres variables: "numeroPersonas", "costoPorPersona" y "presupuestoTotal".
// Se solicita al usuario que ingrese el número de personas que asistirán al evento.
// Proceso 
// Se utiliza una serie de declaraciones condicionales para determinar el costo por persona en función del número de personas que asistirán. Si el número de personas es mayor a 300, el costo por persona será de $75.0. Si el número de personas es mayor a 200 y menor o igual a 300, el costo por persona será de $85.0. De lo contrario, el costo por persona será de $95.0.
// salida
// Una vez que se ha determinado el costo por persona, se calcula el presupuesto total multiplicando el número de personas por el costo por persona.
// Finalmente, se muestra al usuario el costo por platillo por persona y el presupuesto total.
Función CalcularPresupuesto
	Definir numeroPersonas Como Entero
	Definir costoPorPersona Como Real
	Definir presupuestoTotal Como Real
	Escribir 'Ingrese el número de personas: '
	Leer numeroPersonas
	Si numeroPersonas>300 Entonces
		costoPorPersona <- 75.0
	SiNo
		Si numeroPersonas>200 Y numeroPersonas<=300 Entonces
			costoPorPersona <- 85.0
		SiNo
			costoPorPersona <- 95.0
		FinSi
	FinSi
	presupuestoTotal <- numeroPersonas*costoPorPersona
	Escribir 'El costo por platillo por persona es: $', costoPorPersona
	Escribir 'El presupuesto total es: $', presupuestoTotal
FinFunción

// Ejercicio 11
// Entrada
// El pseudocódigo que proporcionaste es un algoritmo que determina el signo de un número. 
// Proceso 
// Primero se define la variable num como real y se le pide al usuario que ingrese un número.
// Salida
// Luego, si el número es igual a cero, se imprime "El número es neutro". Si el número es mayor que cero, se imprime "El número es positivo". Si el número es menor que cero, se imprime "El número es negativo".
Función DeterminarSigno
	Definir num Como Real
	Escribir 'Ingrese un número: '
	Leer num
	Si num=0 Entonces
		Escribir 'El número es neutro'
	SiNo
		Si num>0 Entonces
			Escribir 'El número es positivo'
		SiNo
			Si num<0 Entonces
				Escribir 'El número es negativo'
			FinSi
		FinSi
	FinSi
FinFunción

// Ejercicio 12
// Entrada
// Se definen las variables "num1" y "num2" como enteros.
// Se le pide al usuario que ingrese el primer número y se guarda en la variable "num1".
// Se le pide al usuario que ingrese el segundo número y se guarda en la variable "num2".
// Proceso 
// Si los números son iguales, se muestra el mensaje "Los números son iguales".
// Si los números no son iguales, se compara cuál es mayor o menor.
// Salida
// Si el primer número es menor que el segundo, se muestra el mensaje "El primer número es menor que el segundo".
// Si el primer número es mayor que el segundo, se muestra el mensaje "El primer número es mayor que el segundo".
Función CompararNumeros
	Definir num1, num2 Como Entero
	Escribir 'Ingrese el primer número: '
	Leer num1
	Escribir 'Ingrese el segundo número: '
	Leer num2
	Si num1=num2 Entonces
		Escribir 'Los números son iguales'
	SiNo
		Si num1<num2 Entonces
			Escribir 'El primer número es menor que el segundo'
		SiNo
			Escribir 'El primer número es mayor que el segundo'
		FinSi
	FinSi
FinFunción

// Ejercicio 13
// Entrada
// La función comienza definiendo tres variables numéricas: num1, num2 y num3. Luego, 
// se le pide al usuario que ingrese los valores de los tres números. 
// La función luego compara los tres números y determina cuál es el mayor. 
// Proceso 
// Si el primer número es mayor que los otros dos, entonces ese es el número mayor. 
// Si no es así, se compara el segundo número con los otros dos. 
// Si el segundo número es mayor que los otros dos, entonces ese es el número mayor. Si no es así, 
// Salida
// entonces el tercer número es el mayor. Si los tres números son iguales, entonces se imprime "Los números son iguales"
Función DeterminarMayor
	Definir num1, num2, num3 Como Entero
	Escribir 'Ingrese el primer número: '
	Leer num1
	Escribir 'Ingrese el segundo número: '
	Leer num2
	Escribir 'Ingrese el tercer número: '
	Leer num3
	Si num1>num2 Y num1>num3 Entonces
		Escribir 'El primer número es el mayor'
	SiNo
		Si num2>num1 Y num2>num3 Entonces
			Escribir 'El segundo número es el mayor'
		SiNo
			Si num3>num1 Y num3>num2 Entonces
				Escribir 'El tercer número es el mayor'
			SiNo
				Escribir 'Los números son iguales'
			FinSi
		FinSi
	FinSi
FinFunción

// Ejercicio 14
// Entrada
// Primero se define la variable num como real y se le pide al usuario que ingrese un número.
// Luego se evalúa si el número es igual a cero. Si es así, se imprime "El número es neutro". 
// Proceso 
// Si no es cero, se evalúa si el número es mayor que cero. Si es así, se imprime "El número es positivo".
// Si no es mayor que cero, entonces el número es negativo y se imprime "El número es negativo"
// SALIDA
// FinSi
Función DeterminarSigno2
	Definir num Como Real
	Escribir 'Ingrese un número: '
	Leer num
	Si num=0 Entonces
		Escribir 'El número es neutro'
	SiNo
		Si num>0 Entonces
			Escribir 'El número es positivo'
		SiNo
			Si num<0 Entonces
				Escribir 'El número es negativo'
			FinSi
		FinSi
	FinSi
FinFunción

// Ejercicio 15
// Entrado
// Se define la variable "numero" como un número entero.
// Se imprime el mensaje "numero pares entre 0 y 100".
// Se lee el número ingresado por el usuario y se guarda en la variable "num".
// Proseso
// Mientras "num" sea menor o igual a 100, se ejecuta el siguiente bloque de código:
// Si "num" es divisible por 2, se imprime el valor de "num".
// salida
// Se incrementa el valor de "num" en 1.
// Fin del algoritmo.
Función paresentre10y100
	Definir numero Como Entero
	Escribir 'numero pares entre 0 y 100'
	Leer num
	Mientras num<=100 Hacer
		Si num MOD 2=0 Entonces
			Escribir numero
		FinSi
		num <- num+1
	FinMientras
FinFunción

// Ejercicio 16
// Entrada
// Se definen las variables "numero", "suma_numeros", "cantidad_numeros" y "contador" como reales y enteras.
// Se inicializan las variables "suma_numeros", "cantidad_numeros" y "contador" en 0.
// Se solicita al usuario que ingrese una serie de números distintos de cero. Para finalizar la serie se debe ingresar 0.
// Se repite el siguiente proceso hasta que se ingrese 0:
// Se solicita al usuario que ingrese un número.
// Prosceso
// Si el número ingresado es distinto de cero, se suma a la variable "suma_numeros" y se incrementa en 1 la variable "cantidad_numeros".
// Si se ingresaron números distintos de cero, se calcula el promedio y se muestra por pantalla la cantidad de números distintos de cero y el promedio.
// Salida
// En caso contrario, se muestra por pantalla que no se ingresaron números distintos de cero.
Función sumadenumerosR
	Definir numero, suma_numeros, cantidad_numeros Como Real
	Definir contador Como Entero
	suma_numeros <- 0
	cantidad_numeros <- 0
	contador <- 0
	Escribir 'Ingrese una serie de números distintos de cero. Ingrese 0 para finalizar.'
	Repetir
		Escribir 'Ingrese un número: '
		Leer numero
		Si numero<>0 Entonces
			suma_numeros <- suma_numeros+numero
			cantidad_numeros <- cantidad_numeros+1
		FinSi
	Hasta Que numero=0
	Si cantidad_numeros>0 Entonces
		promedio <- suma_numeros/cantidad_numeros
		Escribir 'La cantidad de números distintos de cero es: ', cantidad_numeros
		Escribir 'El promedio de los números distintos de cero es: ', promedio
	SiNo
		Escribir 'No se ingresaron números distintos de cero.'
	FinSi
FinFunción

// Ejercicio 17
// Entrada
// Definir las variables logika, requerimientos, calculo y promedio como reales.
// Escribir en pantalla "Digite su promedio de logica:".
// Leer la entrada del usuario y guardarla en la variable logika.
// Escribir en pantalla "Digite su promedio de requerimientos:".
// Leer la entrada del usuario y guardarla en la variable requerimientos.
// Escribir en pantalla "Digite su promedio de calculo:".
// Leer la entrada del usuario y guardarla en la variable calculo.
// Proceso 
// Calcular el promedio general de todas las asignaturas como (logika+requerimientos+calculo)/3 y guardarlo en la variable promedio.
// SAlida
// Escribir en pantalla "El promedio general de todas las asignaturas es:", seguido del valor de la variable promedio.
Función Requerimiento
	Definir logika, requerimientos, calculo, promedio Como Real
	Escribir 'Digite su promedio de logica: '
	Leer logika
	Escribir 'Digite su promedio de requerimientos: '
	Leer requerimientos
	Escribir 'Digite su promedio de calculo: '
	Leer calculo
	promedio <- (logika+requerimientos+calculo)/3
	Escribir 'El promedio general de todas las asignaturas es: ', promedio
FinFunción

// Ejercicio 18
// Entrada
// Primero se definen dos variables como reales: 
// sumaEstaturas y contadorPersonas. Luego se inicializan ambas variables en 
// cero. Después se entra en un ciclo que se repetirá hasta que el usuario ingrese 
// Proceso 
// Una estatura igual a cero. Dentro del ciclo se le pide al usuario que ingrese la estatura 
// de una persona y si la estatura es diferente de cero, se suma la estatura a la variable 
// sumaEstaturas y se incrementa el contadorPersonas en uno. Al salir del ciclo, si el 
// Salida
// contadorPersonas es mayor que cero, se calcula el promedio de las estaturas y 
// se muestra en pantalla. Si no, se muestra un mensaje indicando que no se ingresaron estaturas
Función EstaturaPromedio
	Definir sumaEstaturas, contadorPersonas Como Real
	Definir estatura, promedio Como Real
	sumaEstaturas <- 0
	contadorPersonas <- 0
	Repetir
		Escribir 'Ingrese la estatura (en metros) de una persona (0 para finalizar): '
		Leer estatura
		Si estatura<>0 Entonces
			sumaEstaturas <- sumaEstaturas+estatura
			contadorPersonas <- contadorPersonas+1
		FinSi
	Hasta Que estatura=0
	Si contadorPersonas>0 Entonces
		promedio <- sumaEstaturas/contadorPersonas
		Escribir 'La estatura promedio del grupo es: ', promedio, ' metros.'
	SiNo
		Escribir 'No se ingresaron estaturas.'
	FinSi
FinFunción

// Ejercicio 19
// Entrada
// Primero se definen las variables que se van a utilizar en el programa. Luego se inicializan las variables que van a contar 
// la cantidad de alumnos en cada rango y la suma de los pesos de los alumnos en cada rango.
// Proceso 
// después se pide al usuario que ingrese el peso del alumno y se entra en un ciclo que se 
// repite hasta que el usuario ingresa 0. Dentro del ciclo se verifica en qué rango de peso se encuentra el 
// alumno y se actualizan las variables correspondientes.
// Saliida
// Finalmente, se calcula el promedio de peso para cada rango y 
// se muestra la cantidad de alumnos y el promedio de peso para cada rango.
Función EstadisticaPesosAlumnos
	Definir alumnosMenos40kg, alumnosEntre40y50kg, alumnosEntre50y60kg, alumnosMas60kg Como Entero
	Definir sumaMenos40kg, sumaEntre40y50kg, sumaEntre50y60kg, sumaMas60kg Como Real
	Definir peso Como Real
	alumnosMenos40kg <- 0
	alumnosEntre40y50kg <- 0
	alumnosEntre50y60kg <- 0
	alumnosMas60kg <- 0
	sumaMenos40kg <- 0
	sumaEntre40y50kg <- 0
	sumaEntre50y60kg <- 0
	sumaMas60kg <- 0
	Escribir 'Ingrese el peso del alumno (0 para terminar): '
	Leer peso
	Mientras peso<>0 Hacer
		Si peso<40 Entonces
			alumnosMenos40kg <- alumnosMenos40kg+1
			sumaMenos40kg <- sumaMenos40kg+peso
		SiNo
			Si peso>=40 Y peso<50 Entonces
				alumnosEntre40y50kg <- alumnosEntre40y50kg+1
				sumaEntre40y50kg <- sumaEntre40y50kg+peso
			SiNo
				Si peso>=50 Y peso<60 Entonces
					alumnosEntre50y60kg <- alumnosEntre50y60kg+1
					sumaEntre50y60kg <- sumaEntre50y60kg+peso
				SiNo
					alumnosMas60kg <- alumnosMas60kg+1
					sumaMas60kg <- sumaMas60kg+peso
				FinSi
			FinSi
		FinSi
		Escribir 'Ingrese el peso del siguiente alumno (0 para terminar): '
		Leer peso
	FinMientras
	promedioMenos40kg <- sumaMenos40kg/alumnosMenos40kg
	promedioEntre40y50kg <- sumaEntre40y50kg/alumnosEntre40y50kg
	promedioEntre50y60kg <- sumaEntre50y60kg/alumnosEntre50y60kg
	Si alumnosMas60kg>0 Entonces
		promedioMas60kg <- sumaMas60kg/alumnosMas60kg
	SiNo
		promedioMas60kg <- 0
	FinSi
	Escribir 'Alumnos con peso menor a 40 kg: ', alumnosMenos40kg
	Escribir 'Promedio de peso en el rango menor a 40 kg: ', promedioMenos40kg
	Escribir 'Alumnos con peso entre 40 kg y 50 kg: ', alumnosEntre40y50kg
	Escribir 'Promedio de peso en el rango entre 40 kg y 50 kg: ', promedioEntre40y50kg
	Escribir 'Alumnos con peso entre 50 kg y 60 kg: ', alumnosEntre50y60kg
	Escribir 'Promedio de peso en el rango entre 50 kg y 60 kg: ', promedioEntre50y60kg
	Escribir 'Alumnos con peso mayor a 60 kg: ', alumnosMas60kg
	Escribir 'Promedio de peso en el rango mayor a 60 kg: ', promedioMas60kg
FinFunción

// Ejercicio 20
// entrada
// Primero se define la variable "c" como una cadena y la variable "valor_ascii" como un entero.
// Luego se le pide al usuario que ingrese un carácter vocal.
// Se lee el carácter ingresado por el usuario y se guarda en la variable "c".
// Proceso 
// Si el carácter ingresado es ?a? o ?A?, entonces el valor ASCII de la vocal es 97.
// Si el carácter ingresado es ?e? o ?E?, entonces el valor ASCII de la vocal es 101.
// Si el carácter ingresado es ?i? o ?I?, entonces el valor ASCII de la vocal es 105.
// Si el carácter ingresado es ?o? o ?O?, entonces el valor ASCII de la vocal es 111.
// Si el carácter ingresado es ?u? o ?U?, entonces el valor ASCII de la vocal es 117.
// Si el carácter ingresado no es una vocal, se muestra un mensaje indicando que no lo 
// salida
// Finalmente, si se ha encontrado un valor ASCII para la vocal ingresada, se muestra en pantalla.
Función ObtenerValorASCII
Definir c Como Carácter
Definir valor_ascii Como Entero

Escribir "Ingrese un carácter vocal: "
Leer c

Si c == "a" Entonces
	valor_ascii = 97
	Escribir "El valor ASCII de la vocal es: ", valor_ascii
SiNo si c=="A" Entonces
		valor_ascii = 65
		Escribir "El valor ASCII de la vocal es: ", valor_ascii
    Sino Si c == "e"  Entonces
			valor_ascii = 101
			Escribir "El valor ASCII de la vocal es: ", valor_ascii
		SiNo si c=="E" Entonces
				valor_ascii = 69
				Escribir "El valor ASCII de la vocal es: ", valor_ascii
			Sino Si c == "i"  Entonces
					valor_ascii = 105
					Escribir "El valor ASCII de la vocal es: ", valor_ascii
				SiNo si c=="I" Entonces
						valor_ascii = 73
						Escribir "El valor ASCII de la vocal es: ", valor_ascii
					Sino Si c == "o"  Entonces
							valor_ascii = 111
							Escribir "El valor ASCII de la vocal es: ", valor_ascii
						SiNo si c=="O" Entonces
								valor_ascii = 79
								Escribir "El valor ASCII de la vocal es: ", valor_ascii
							Sino Si c == "u" Entonces
									valor_ascii = 117
									Escribir "El valor ASCII de la vocal es: ", valor_ascii
								SiNo si c=="U" Entonces
										valor_ascii = 85
										Escribir "El valor ASCII de la vocal es: ", valor_ascii
									Sino
										Escribir "El carácter no es una vocal"
									FinSi
									
									
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinSi


FinFunción

// Ejercicio 21
// Entrada
// Primero, se define la variable "numMes" como un número entero.
// Luego, se le pide al usuario que ingrese un número del 1 al 12.
// El número ingresado por el usuario se guarda en la variable "numMes".
// A continuación, se utiliza la estructura de control "Según" para comparar el valor de "numMes" con los números del 1 al 12.
// Proceso
// Si "numMes" es igual a 1, se muestra el mensaje "El número X corresponde al mes de ENERO", donde X es el número ingresado por el usuario.
// Si "numMes" es igual a 2, se muestra el mensaje "El número X corresponde al mes de FEBRERO", donde X es el número ingresado por el usuario.
// Si "numMes" es igual a 3, se muestra el mensaje "El número X corresponde al mes de MARZO", donde X es el número ingresado por el usuario.
// Si "numMes" es igual a 4, se muestra el mensaje "El número X corresponde al mes de ABRIL", donde X es el número ingresado por el usuario.
// Si "numMes" es igual a 5, se muestra el mensaje "El número X corresponde al mes de MAYO", donde X es el número ingresado por el usuario.
// Si "numMes" es igual a 6, se muestra el mensaje "El número X corresponde al mes de JUNIO", donde X es el número ingresado por el usuario.
// Si "numMes" es igual a 7, se muestra el mensaje "El número X corresponde al mes de JULIO", donde X es el número ingresado por el usuario.
// Si "numMes" es igual a 8, se muestra el mensaje "El número X corresponde al mes de AGOSTO", donde X es el número ingresado por el usuario.
// Si "numMes" es igual a 9, se muestra el mensaje "El número X corresponde al mes de SEPTIEMBRE", donde X es el número ingresado por el usuario.
// Si "numMes" es igual a 10, se muestra el mensaje "El número X corresponde al mes de OCTUBRE", donde X es el número ingresado por el usuario.
// Si "numMes" es igual a 11, se muestra el mensaje "El número X corresponde al mes de NOVIEMBRE", donde X es el número ingresado por el usuario.
// SALIDA
// Si "numMes" es igual a 12, se muestra el mensaje "El número X corresponde al mes de DICIEMBRE", donde X es el número ingresado por el usuario.
// Si "numMes" no está entre los números del 1 al 12 (es decir, si tiene otro valor), se muestra un mensaje de error que dice: "ERROR: Valor inválido".
Función MensajeMes
	Definir numMes Como Entero
	Escribir 'Ingrese un número del 1 al 12: '
	Leer numMes
	Según numMes Hacer
		1:
			Escribir 'El número ', numMes, ' corresponde al mes de ENERO'
		2:
			Escribir 'El número ', numMes, ' corresponde al mes de FEBRERO'
		3:
			Escribir 'El número ', numMes, ' corresponde al mes de MARZO'
		4:
			Escribir 'El número ', numMes, ' corresponde al mes de ABRIL'
		5:
			Escribir 'El número ', numMes, ' corresponde al mes de MAYO'
		6:
			Escribir 'El número ', numMes, ' corresponde al mes de JUNIO'
		7:
			Escribir 'El número ', numMes, ' corresponde al mes de JULIO'
		8:
			Escribir 'El número ', numMes, ' corresponde al mes de AGOSTO'
		9:
			Escribir 'El número ', numMes, ' corresponde al mes de SEPTIEMBRE'
		10:
			Escribir 'El número ', numMes, ' corresponde al mes de OCTUBRE'
		11:
			Escribir 'El número ', numMes, ' corresponde al mes de NOVIEMBRE'
		12:
			Escribir 'El número ', numMes, ' corresponde al mes de DICIEMBRE'
		De Otro Modo:
			Escribir 'ERROR: Valor inválido'
	FinSegún
FinFunción

// Ejercicio 22
// Entrada
// La función "Kilometrosrecorridos" recibe como entrada el número de pasajes
// que se van a calcular. Luego, se define la variable "contador" que almacena 
// el número de pasajes que se van a calcular. Se leen los valores de los pasajes
// y se calcula el precio del pasaje según la distancia recorrida. Si la distancia
// Proceso
// es menor o igual a 100 km, el precio es igual a la distancia recorrida. 
// Si la distancia es mayor a 100 km, el precio es igual a la distancia recorrida multiplicada 
// por 1.2. Se calcula la cantidad de pasajes con una distancia menor o igual a 100 km
// salida
// y la cantidad de pasajes con una distancia mayor a 100 km. También se calcula el promedio
// de precios de los pasajes. Si no se ingresaron datos de pasajes, se muestra un mensaje indicando que no se ingresaron datos.
Función Kilometrosrecorridos
	Definir precio, recorrido, promedio, cantidad_100km, cantidad_mas100km Como Real
	Definir contador Como Entero
	Leer contador
	cantidad_100km <- 0
	cantidad_mas100km <- 0
	Para i<-1 Hasta contador Con Paso 1 Hacer
		Escribir 'digite el recorrido en km del pasaje i:', i
		Leer recorrido
		Si recorrido<=100 Entonces
			precio <- recorrido
			cantidad_100km <- cantidad_100km+1
		SiNo
			precio <- recorrido*1.2
			cantidad_mas100km <- cantidad_mas100km+1
		FinSi
		Escribir 'el pasaje', i, 'tiene un precio de $', precio
		promedio <- promedio+precio
	FinPara
	Si contador>0 Entonces
		Escribir 'la cantidad de pasajes con recorrido <= 100 km:', cantidad_100km
		Escribir 'la cantidad de pasajes con recorrido mayor a 100 km:', cantidad_mas100km
		Escribir 'promedio de precios de los pasajes: $', promedio
	SiNo
		Escribir 'no se ingresaron datos de pasajes.'
	FinSi
FinFunción

// Ejercicio 23
// Entrada
// El usuario ingresa el peso del paquete en kilogramos.
// Proceso
// Si el peso es menor o igual a 5 kg:
// Se le pedirá al usuario que ingrese la zona de destino (1: América del Norte, 2: América Central, 3: América del Sur, 4: Europa, 5: Asia).
// Se calculará el costo del servicio de paquetería en función de la zona de destino y el peso del paquete.
// Salida
// Se imprimirá "El costo del servicio de paquetería es: " seguido por el costo calculado.
// Si el peso es mayor que 5 kg:
// Se imprimirá "El paquete excede el peso permitido. No se puede transportar."
Función pesosenkgenpaises
	Escribir 'Ingrese el peso del paquete en kg: '
	Leer peso
	Si peso<=5 Entonces
		Escribir 'Ingrese la zona de destino (1: América del Norte, 2: América Central, 3: América del Sur, 4: Europa, 5: Asia): '
		Leer zona
		Según zona Hacer
			1:
				costo <- peso*10
			2:
				costo <- peso*12
			3:
				costo <- peso*15
			4:
				costo <- peso*20
			5:
				costo <- peso*25
			De Otro Modo:
				Escribir 'Zona no válida'
		FinSegún
		Escribir 'El costo del servicio de paquetería es: ', costo
	SiNo
		Escribir 'El paquete excede el peso permitido. No se puede transportar.'
	FinSi
FinFunción

// Ejercicio 24
// Entrada
// Primero se define la variable "c" como una cadena.
// Luego se le pide al usuario que ingrese un carácter.
// proceso
// Se lee el carácter ingresado y se guarda en la variable "c".
// Si el carácter ingresado es un número entre 0 y 9, se imprime "El carácter es un número".
// Salida
// Si el carácter ingresado es una vocal (a, e, i, o, u) en mayúscula o minúscula, se imprime "El carácter es una vocal".
// Si el carácter ingresado no es un número ni una vocal, se imprime "El carácter no es un número ni una vocal".
Función VerificarCaracter
	Definir c Como Cadena
	Escribir 'Ingrese un carácter: '
	Leer c
	Si c>='0' Y c<='9' Entonces
		Escribir 'El carácter es un número'
	SiNo
		Si c='a' O c='e' O c='i' O c='o' O c='u' O c='A' O c='E' O c='I' O c='O' O c='U' Entonces
			Escribir 'El carácter es una vocal'
		SiNo
			Escribir 'El carácter no es un número ni una vocal'
		FinSi
	FinSi
FinFunción

// Ejercicio 25
// Entrada
// Primero se definen las variables "categoria", "sueldo", "totalSueldo", "totalBonos", "contAuxiliar", "contAgregado" y "contPrincipal".
// Luego se pide al usuario que ingrese la categoría del profesor (Auxiliar, Agregado o Principal) y el sueldo del profesor.
// Proceso 
// Si la categoría es Auxiliar, se suma el sueldo al total de sueldos y se suma el 10 MOD  del sueldo al total de bonos. 
// Si la categoría es Agregado, se suma el sueldo al total de sueldos y se suma el 20 MOD  del sueldo al total de bonos. 
// Si la categoría es Principal, se suma el sueldo al total de sueldos y se suma el 50 MOD  del sueldo al total de bonos.
// Salida
// luego se pide nuevamente la categoría del profesor hasta que se ingrese una categoría diferente a Auxiliar, Agregado o Principal. Finalmente, 
// si hay profesores en cada categoría, se calcula el promedio de los sueldos y los bonos para cada categoría y se muestran en pantalla.
Función Sueldoybonos
	Definir categoria Como Cadena
	Definir sueldo, totalSueldo, totalBonos Como Real
	Definir contAuxiliar, contAgregado, contPrincipal Como Entero
	Escribir 'digite la categoria del profesor Auxiliar, Agregado, Principal):'
	Leer categoria
	totalSueldo <- 0
	totalBonos <- 0
	contAgregado <- 0
	contAuxiliar <- 0
	contPrincipal <- 0
	Mientras categoria='Auxiliar' O categoria='Agregado' O categoria='Principal' Hacer
		Escribir 'digite el sueldo del profesor:'
		Leer sueldo
		Si categoria='Auxiliar' Entonces
			totalSueldo <- totalSueldo+sueldo
			totalBonos <- totalBonos+sueldo*0.10
			contAuxiliar <- contAuxiliar+1
		FinSi
		Si categoria='Agregado' Entonces
			totalSueldo <- totalSueldo+sueldo
			totalBonos <- totalBonos+sueldo*0.20
			contAgregado <- contAgregado+1
		FinSi
		Si categoria='Principal' Entonces
			totalSueldo <- totalSueldo+sueldo
			totalBonos <- totalBonos+sueldo*0.50
			contPrincipal <- contPrincipal+1
		FinSi
		Escribir 'digite la categoria del profesor (Auxiliar, Agregado, Principal):'
		Leer categoria
	FinMientras
	Si contAuxiliar>0 Entonces
		promedioSueldoAuxiliar <- totalSueldo/contAuxiliar
		promedioBonoAuxiliar <- totalBonos/contAuxiliar
		Escribir 'Promedio de sueldos de la categoria Auxiliar:', promedioSueldoAuxiliar
		Escribir 'Promedio de bonos de la categoria Auxiliar:', promedioBonoAuxiliar
	FinSi
	Si contAgregado>0 Entonces
		promedioSueldoAgregado <- totalSueldo/contAgregado
		promedioBonoAgregado <- totalBonos/contAgregado
		Escribir 'Promedio de sueldos de la categoria Agregado:', promedioSueldoAgregado
		Escribir 'Promedio de bonos de la categoria Agregado:', promedioBonoAgregado
	FinSi
	Si contPrincipal>0 Entonces
		promedioSueldoPrincipal <- totalSueldo/contPrincipal
		promedioBonoPrincipal <- totalBonos/contPrincipal
		Escribir 'Promedio de sueldos de la categoria Principal:', promedioSueldoPrincipal
		Escribir 'Promedio de bonos de la categoria Principal:', promedioBonoPrincipal
	FinSi
FinFunción

// Ejercicio 26
// Entrada
// Se define la variable "sumaEstaturas" y "contadorPersonas" como reales y se inicializan en 0.
// Se le pide al usuario que ingrese la estatura de una persona en centímetros o que ingrese 0 para terminar.
// Se lee la estatura ingresada por el usuario.
// Proceso 
// Mientras la estatura ingresada sea diferente de 0: a. Se suma la estatura ingresada a la variable "sumaEstaturas".
// b. Se incrementa el contador de personas en 1. c. Se le pide al usuario que ingrese la estatura de una persona en centímetros o que ingrese 0 para terminar. d. Se lee la estatura ingresada por el usuario./
// Salida
// Si el contador de personas es mayor que 0: a. Se calcula el promedio de estaturas dividiendo la suma total de las estaturas por el número total de personas. b. Se muestra el resultado del promedio de estaturas del grupo.
// Si el contador de personas es igual a 0: a. Se muestra un mensaje indicando que no se ingresaron estaturas y que no se puede calcular el promedio.
Función sumadeestaturas
	Definir sumaEstaturas, contadorPersonas, estatura, promedioEstaturas Como Real
	sumaEstaturas <- 0
	contadorPersonas <- 0
	Escribir 'Digite la estatura de una persona (en centimetros) o digite 0 para terminar:'
	Leer estatura
	Mientras estatura<>0 Hacer
		sumaEstaturas <- sumaEstaturas+estatura
		contadorPersonas <- contadorPersonas+1
		Escribir 'Digite la estatura de una persona (en centimetros) o digite 0 para terminar:'
		Leer estatura
	FinMientras
	Si contadorPersonas>0 Entonces
		promedioEstaturas <- sumaEstaturas/contadorPersonas
		Escribir 'El promedio de estaturas del grupo es:', promedioEstaturas
	SiNo
		Escribir 'No se ingresaron estaturas. No se puede calcular el promedio.'
	FinSi
FinFunción

// Ejercicio 27
// SALIDA
// Se definen las variables num, cantidadPositivos y totalMultiplos como enteros.
// Se inicializan las variables num, cantidadPositivos y totalMultiplos en 0.
// Se solicita al usuario que ingrese una serie de números positivos (digite un número negativo para terminar).
// Proceso 
// Mientras el número ingresado sea mayor o igual a 0:
// Se solicita al usuario que ingrese un número.
// Si el número ingresado es mayor o igual a 0:
// Si el número es múltiplo de 3, se suma a la variable totalMultiplos.
// Salida
// Se incrementa la variable cantidadPositivos en 1.
// Se muestra la cantidad de números positivos múltiplos de 3 y su suma.
Función cantidadepositivos
	Definir num, cantidadPositivos, totalMultiplos Como Entero
	num <- 0
	cantidadPositivos <- 0
	totalMultiplos <- 0
	Escribir 'Digite una serie de numeros positivos (Digite un numero negativo para terminar):'
	Mientras num>=0 Hacer
		Escribir 'ingrese un numero: '
		Leer num
		Si num>=0 Entonces
			Si num MOD 3=0 Entonces
				totalMultiplos <- totalMultiplos+num
			FinSi
			cantidadPositivos <- cantidadPositivos+1
		FinSi
	FinMientras
	Escribir 'Cantidad de numeros positivos multiplos de 3 son :', cantidadPositivos
	Escribir 'Total de los numeros positivos multiplos de 3 son :', totalMultiplos
FinFunción

// Ejercicio 28
// Entrada
// Primero se le pide al usuario que ingrese el tipo de tarjeta y 
// el límite de crédito actual. Luego, se verifica el tipo de tarjeta
// y se calcula el aumento correspondiente en función del tipo de tarjeta. 
// Proceso
// Si la tarjeta es del tipo 1, el aumento es del 25 MOD , si es del tipo 2, 
// el aumento es del 35 MOD , si es del tipo 3, el aumento es del 40 MOD  y
// Salida
// para cualquier otro tipo de tarjeta, el aumento es del 50 MOD . Finalmente, s
// e calcula el nuevo límite de crédito sumando el aumento al límite actual y se muestra al usuario.
Función tipodetargeta
	Escribir 'Ingrese el tipo de tarjeta (1, 2, 3 u otro): '
	Leer tipoTarjeta
	Escribir 'Ingrese el límite de crédito actual: '
	Leer limiteActual
	Si tipoTarjeta=1 Entonces
		aumento <- limiteActual*0.25
	SiNo
		Si tipoTarjeta=2 Entonces
			aumento <- limiteActual*0.35
		SiNo
			Si tipoTarjeta=3 Entonces
				aumento <- limiteActual*0.40
			SiNo
				aumento <- limiteActual*0.50
			FinSi
		FinSi
	FinSi
	nuevoLimite <- limiteActual+aumento
	Escribir 'El nuevo límite de crédito es: ', nuevoLimite
FinFunción

// Ejercicio 29
// ENTRADA
// Primero se definen las variables horasTrabajadas, valorHora, totalHoras y sueldo como enteros. 
// Luego se inicializan totalHoras y sueldo en 0. Después se utiliza un ciclo para pedir las horas trabajadas 
// Proceso 
// y el valor de la hora trabajada para cada uno de los 20 días del mes. En cada iteración del ciclo se 
// SALIDA
// suman las horas trabajadas a totalHoras y se calcula el sueldo multiplicando las horas trabajadas por 
// el valor de la hora trabajada y sumándolo a sueldo.
Función CalcularSueldo
	Definir horasTrabajadas, valorHora, totalHoras, sueldo Como Entero
	Definir i Como Entero
	totalHoras <- 0
	sueldo <- 0
	Para i<-1 Hasta 20 Hacer
		Escribir 'Ingrese las horas trabajadas en el día ', i, ': '
		Leer horasTrabajadas
		Escribir 'Ingrese el valor de la hora trabajada: '
		Leer valorHora
		totalHoras <- totalHoras+horasTrabajadas
		sueldo <- sueldo+(horasTrabajadas*valorHora)
		i <- i+1
	FinPara
	Escribir 'El total de horas trabajadas en el mes es: ', totalHoras
	Escribir 'El sueldo a recibir por las horas trabajadas es: ', sueldo
FinFunción // Incrementar el valor de i en cada iteración

// Ejercicio 30
// entrada
// Se define la variable c como una cadena.
// Se le pide al usuario que ingrese un carácter.
// Se lee el carácter ingresado por el usuario y se guarda en la variable c.
// Proceso 
// Si el carácter es una letra (mayúscula o minúscula), se imprime "El carácter es una letra".
// Salida
// Si el carácter es un signo de puntuación (coma, punto, punto y coma o dos puntos), se imprime "El carácter es un signo de puntuación".
// Si el carácter no es una letra ni un signo de puntuación, se imprime "El carácter no es una letra ni un signo de puntuación".
Función VerificarCaracter3
	Definir c Como Cadena
	Escribir 'Ingrese un carácter: '
	Leer c
	Si (c>='a' Y c<='z') O (c>='A' Y c<='Z') Entonces
		Escribir 'El carácter es una letra'
	SiNo
		Si c=',' O c='.' O c=';' O c=':' Entonces
			Escribir 'El carácter es un signo de puntuación'
		SiNo
			Escribir 'El carácter no es una letra ni un signo de puntuación'
		FinSi
	FinSi
FinFunción

// Ejercicio 31
// Entrada
// Primero se define la variable numDia como un número entero y se le pide al usuario que ingrese un número 
// Proceso 
// del 1 al 7. Luego se utiliza la estructura de control Según para evaluar el valor de numDia y mostrar el día de la semana correspondiente. 
// Si numDia es igual a 1, se muestra "LUNES", si es igual a 2, se muestra "MARTES", y así sucesivamente hasta
// Salida
// llegar a 7 que corresponde a "DOMINGO". Si numDia no está en el rango del 1 al 7, se muestra "ERROR: Valor inválido"
Función VerificarDiaSemana
	Definir numDia Como Entero
	Escribir 'Ingrese un número del 1 al 7: '
	Leer numDia
	Según numDia Hacer
		1:
			Escribir 'LUNES'
		2:
			Escribir 'MARTES'
		3:
			Escribir 'MIERCOLES'
		4:
			Escribir 'JUEVES'
		5:
			Escribir 'VIERNES'
		6:
			Escribir 'SABADO'
		7:
			Escribir 'DOMINGO'
		De Otro Modo:
			Escribir 'ERROR: Valor inválido'
	FinSegún
FinFunción

// Ejercicio 32
// Entrada
// Primero se definen las variables "num1", "num2" y "num3" como números reales. 
// Proceso 
// Luego se pide al usuario que ingrese los valores de estas variables. Si la condición se cumple,
// Salida
// se imprime "El número 1 es el doble del número 2 y un 20% menos que el número 3." de 
Función VerificarNumeros
	Definir num1, num2, num3 Como Real
	Escribir 'Ingrese el número 1: '
	Leer num1
	Escribir 'Ingrese el número 2: '
	Leer num2
	Escribir 'Ingrese el número 3: '
	Leer num3
	Si num1=num2*2 O num1=num3*0.8 Entonces
		Escribir 'El número 1 es el doble del número 2 y un 20% menos que el número 3.'
	SiNo
		Escribir 'El número 1 no cumple las condiciones requeridas.'
	FinSi
FinFunción

// Ejercicio 33
// ENTRADA
// El programa comienza definiendo las variables 
// "cantidadVentas", "venta", "contadorMayor1000", "contadorMayor500", "contadorMenorIgual500", "montoMayor1000", "montoMayor500", "montoMenorIgual500"
// Proceso 
// }y "montoTotal". Luego, se le pide al usuario que ingrese la cantidad de ventas realizadas durante el día. A continuación, se utiliza un bucle 
// SALIDA
// "Para" para leer cada venta y actualizar las variables correspondientes según su valor. Finalmente, se imprimen los resultados.
Función ejerciciototal
	Definir cantidadVentas, venta, contadorMayor1000, contadorMayor500, contadorMenorIgual500 Como Entero
	Definir montoMayor1000, montoMayor500, montoMenorIgual500, montoTotal Como Real
	cantidadVentas <- 0
	contadorMayor1000 <- 0
	contadorMayor500 <- 0
	contadorMenorIgual500 <- 0
	montoMayor1000 <- 0
	montoMayor500 <- 0
	montoMenorIgual500 <- 0
	montoTotal <- 0
	Escribir 'Ingrese la cantidad de ventas realizadas durante el día:'
	Leer cantidadVentas
	Para i<-1 Hasta cantidadVentas Hacer
		Escribir 'Ingrese el monto de la venta ', i, ':'
		Leer venta
		montoTotal <- montoTotal+venta
		Si venta>1000 Entonces
			contadorMayor1000 <- contadorMayor1000+1
			montoMayor1000 <- montoMayor1000+venta
		SiNo
			Si venta>500 Entonces
				contadorMayor500 <- contadorMayor500+1
				montoMayor500 <- montoMayor500+venta
			SiNo
				contadorMenorIgual500 <- contadorMenorIgual500+1
				montoMenorIgual500 <- montoMenorIgual500+venta
			FinSi
		FinSi
	FinPara
	Escribir 'Cantidad de ventas mayores a $1000: ', contadorMayor1000
	Escribir 'Cantidad de ventas mayores a $500 pero menores o iguales a $1000: ', contadorMayor500
	Escribir 'Cantidad de ventas menores o iguales a $500: ', contadorMenorIgual500
	Escribir 'Monto vendido en ventas mayores a $1000: $', montoMayor1000
	Escribir 'Monto vendido en ventas mayores a $500 pero menores o iguales a $1000: $', montoMayor500
	Escribir 'Monto vendido en ventas menores o iguales a $500: $', montoMenorIgual500
	Escribir 'Monto total vendido durante el día: $', montoTotal
FinFunción

// Ejercicio 34
// ENTRADA
// Primero se definen las variables num, suma e i como enteros.
// Luego se le pide al usuario que ingrese 10 números y se inicializa la variable suma en 0.
// Proceso 
// Después, se utiliza un ciclo for para pedirle al usuario que ingrese los 10 números y sumarlos a la variable suma.
// Salida
// Finalmente, se imprime la suma acumulada de los 10 números ingresados por el usuario
Función numeroentero
	Definir num Como Entero
	Definir suma Como Entero
	Definir i Como Entero
	Escribir 'ingrese 10 numeros:'
	suma <- 0
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir 'ingrese el numero', i
		Leer num
		suma <- suma+num
	FinPara
	Escribir 'La suma acumulada es :', suma
FinFunción

// ejercicio 35
// Entrada
// Se definen las variables num1 y num2 como enteros.
// Se le pide al usuario que ingrese el primer número.
// Se lee el primer número ingresado por el usuario y se guarda en la variable num1.
// Se le pide al usuario que ingrese el segundo número.
// Proceso 
// Se lee el segundo número ingresado por el usuario y se guarda en la variable num2.
// Si los dos números son iguales, se imprime "Los números son iguales".
// Si los dos números no son iguales, se compara cuál es mayor o menor.
// Salida
// Si el primer número es menor que el segundo, se imprime "El primer número es menor que el segundo".
// Si el primer número es mayor que el segundo, se imprime "El primer número es mayor que el segundo"
Función CompararNumeros2
	Definir num1, num2 Como Entero
	Escribir 'Ingrese el primer número: '
	Leer num1
	Escribir 'Ingrese el segundo número: '
	Leer num2
	Si num1=num2 Entonces
		Escribir 'Los números son iguales'
	SiNo
		Si num1<num2 Entonces
			Escribir 'El primer número es menor que el segundo'
		SiNo
			Escribir 'El primer número es mayor que el segundo'
		FinSi
	FinSi
FinFunción

Algoritmo selectivos
	CalcularCostoColas()
	AplicarDescuentoTrajes()
	CalcularCostoViaje()
	calcularcostoconsulta()
	CalcularCostoViaje2()
	CalcularDescuentosSupermercado()
	CalcularGananciaUvas()
	CalcularPrecioLapices()
	CalcularPreciosVenta()
	CalcularPresupuesto()
	DeterminarSigno()
	CompararNumeros()
	DeterminarMayor()
	DeterminarSigno()
	paresentre10y100()
	DeterminarSigno2()
	Requerimiento()
	sumadenumerosR()
	EstaturaPromedio()
	EstadisticaPesosAlumnos()
	ObtenerValorASCII()
	MensajeMes()
	Kilometrosrecorridos()
	pesosenkgenpaises()
	VerificarCaracter()
	Sueldoybonos()
	sumadeestaturas()
	cantidadepositivos()
	tipodetargeta()
	VerificarCaracter3()
	VerificarDiaSemana()
	VerificarNumeros()
	ejerciciototal()
	numeroentero()
	CompararNumeros2()
FinAlgoritmo
