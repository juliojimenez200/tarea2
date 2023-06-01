// Ejercicio 1
// Entrada
// se definie variables 
Funci�n CalcularCostoColas
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
FinFunci�n

// Ejercicio 2
// Entrada
// Se definen variables
Funci�n AplicarDescuentoTrajes
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
FinFunci�n // si el precio del traje es menor a 2500$ tonses se ara un descuento del 0.08 MOD 

// Ejercicio 3
// Entrada
// Se definen variables
Funci�n CalcularCostoViaje
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
	Escribir 'El pago a la compa��a de autobuses es: $', costoTotal
	Escribir 'El costo por alumno es: $', costoAlumno
FinFunci�n

// Ejercicio 4
// Entrada
// Se definen las variables "numeroCita", "costoCita" y "montoTotalPagado".
// Se solicita al usuario que ingrese el n�mero de cita.
// Proceso
// Si el n�mero de cita es menor o igual a 3, el costo de la cita es de $200.00; si no, se verifica si el n�mero de cita es menor o igual a 5, en cuyo caso el costo de la cita es de $150.00; si no, se verifica si el n�mero de cita es menor o igual a 8, en cuyo caso el costo de la cita es de $100.00; si no, el costo de la cita es de $50.00.
// Se calcula el monto total pagado por el tratamiento utilizando la f�rmula: (200.003)+(150.002)+(100.00*3)+((numeroCita-8)*50.00)
// Salida
// Se muestra en pantalla el costo de la cita y el monto total pagado por el tratamiento.
Funci�n calcularcostoconsulta
	Definir numeroCita Como Entero
	Definir costoCita Como Real
	Definir montoTotalPagado Como Real
	Escribir 'Ingrese el n�mero de cita: '
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
FinFunci�n

// Ejercicio 5
// ENTRADA
// Se definen las variables "cantidadProductos", "precioUnitario", "descuentoInicial", "totalSinDescuentoAdicional", "descuentoAdicional" y "totalAPagar".
// Se solicita al usuario que ingrese la cantidad de productos comprados y el precio unitario del producto.
// Proceso
// Si la cantidad de productos comprados es mayor a 19, el descuento inicial es del 10 MOD  sobre el precio unitario; si no, el descuento inicial es del 20 MOD  sobre el precio unitario.
// Se calcula el total sin descuento adicional utilizando la f�rmula: (precioUnitario-descuentoInicial)*cantidadProductos.
// Se calcula el descuento adicional utilizando la f�rmula: totalSinDescuentoAdicional*0.05.
// Se calcula el total a pagar utilizando la f�rmula: totalSinDescuentoAdicional-descuentoAdicional.
// SALIDA
// Se muestran en pantalla la cantidad comprada, el precio original por unidad, el descuento inicial, el total sin descuento adicional, el descuento adicional y el total a pagar.
Funci�n CalcularDescuentosSupermercado
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
FinFunci�n

// Ejercicio 6
// Entrada
// Se definen las variables "tipoAutobus", "precioPorKilometro", "distanciaKilometros", "cantidadPersonas", "costoTotal" y "costoPorPersona".
// Proceso 
// Se solicita al usuario que ingrese el tipo de autob�s (A, B o C), la distancia en kil�metros y la cantidad de personas.
// Si la cantidad de personas es mayor o igual a 20, se verifica el tipo de autob�s ingresado y se asigna el precio por kil�metro correspondiente.
// Se calcula el costo total del viaje utilizando la f�rmula: precioPorKilometrodistanciaKilometroscantidadPersonas.
// Se calcula el costo por persona utilizando la f�rmula: costoTotal/cantidadPersonas.
// Salida
// Se muestran en pantalla el costo total del viaje y el costo por persona.
// Si la cantidad de personas es menor a 20, se muestra en pantalla un mensaje indicando que debe haber un m�nimo de 20 personas para presupuestar el viaje.
Funci�n CalcularCostoViaje2
	Definir tipoAutobus Como Cadena
	Definir precioPorKilometro, distanciaKilometros, costoTotal, costoPorPersona  Como Real
	Definir cantidadPersonas Como Entero
	Escribir 'Ingrese el tipo de autob�s (A, B o C): '
	Leer tipoAutobus
	Escribir 'Ingrese la distancia en kil�metros: '
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
		Escribir 'Debe haber un m�nimo de 20 personas para presupuestar el viaje.'
	FinSi
FinFunci�n

// Ejercicio 7
// ENTRADA
// Se definen las variables "tipoUva", "TAMANOUVA", "precioInicial" y "ganancia".
// Se solicita al usuario que ingrese el tipo de uva (A o B) y el tama�o de uva (1 o 2).
// Proceso 
// Se verifica el tipo de uva ingresado y se asigna el precio inicial correspondiente.
// Se ajusta el precio inicial seg�n el tama�o de uva ingresado.
// Se calcula la ganancia obtenida utilizando la f�rmula: precioInicial.
// SALIDA
// Se muestra en pantalla la ganancia obtenida.
Funci�n CalcularGananciaUvas
	Definir tipoUva Como Cadena
	Definir TAMANOUVA Como Entero
	Definir precioInicial Como Real
	Definir ganancia Como Real
	Escribir 'Ingrese el tipo de uva (A o B): '
	Leer tipoUva
	Escribir 'Ingrese el tama�o de uva (1 o 2): '
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
FinFunci�n

// Ejercicio 8
// Se define la cantidad de l�pices y el precio por l�piz.
// Se muestra un mensaje para que el usuario ingrese la cantidad de l�pices.
// Se lee la cantidad de l�pices ingresados por el usuario y se establece el precio por l�piz seg�n la cantidad ingresada. Si la cantidad es mayor a 1000, el precio por l�piz es 1.0; de lo contrario, el precio por l�piz es 1.5.
// Se calcula el total a pagar multiplicando la cantidad de l�pices por el precio por l�piz.
// Se muestra el precio por cada l�piz y el total a pagar.
Funci�n CalcularPrecioLapices
	Definir cantidadLapices Como Entero
	Definir precioLapiz Como Real
	Definir totalPagar Como Real
	Escribir 'Ingrese la cantidad de l�pices: '
	Leer cantidadLapices
	Si cantidadLapices>1000 Entonces
		precioLapiz <- 1.0
	SiNo
		precioLapiz <- 1.5
	FinSi
	totalPagar <- cantidadLapices*precioLapiz
	Escribir 'El precio por cada l�piz es: ', precioLapiz
	Escribir 'El total a pagar es: ', totalPagar
FinFunci�n

// Ejercicio 9
// ENTRADA
// Definir claveArticulo Como Entero
// Definir costoMateriaPrima Como Real
// Definir costoManoDeObra Como Real
// Definir gastosFabricacion Como Real
// Definir costoProduccion Como Real
// Definir precioVenta Como Real
// Escribir 'Ingrese la clave del art�culo (1, 2, 3, 4, 5 o 6): ?
// Leer claveArticulo
// Escribir 'Ingrese el costo de la materia prima: ?
// Leer costoMateriaPrima
// Proceso 
// Si claveArticulo=3 O claveArticulo=4 Entonces costoManoDeObra <- 0.75costoMateriaPrima SiNo Si claveArticulo=1 O claveArticulo=5 Entonces costoManoDeObra <- 0.80costoMateriaPrima SiNo costoManoDeObra <- 0.85*costoMateriaPrima FinSi FinSi
// Si claveArticulo=2 O claveArticulo=5 Entonces gastosFabricacion <- 0.30costoMateriaPrima SiNo Si claveArticulo=3 O claveArticulo=6 Entonces gastosFabricacion <- 0.35costoMateriaPrima SiNo gastosFabricacion <- 0.28*costoMateriaPrima FinSi FinSi
// costoProduccion <- costoMateriaPrima+costoManoDeObra+gastosFabricacion
// precioVenta <- costoProduccion+(0.45*costoProduccion)
// salida
// Escribir 'Clave del art�culo: ', claveArticulo
// scribir ?Precio de venta: $?, precioVenta
Funci�n CalcularPreciosVenta
	Definir claveArticulo Como Entero
	Definir costoMateriaPrima Como Real
	Definir costoManoDeObra Como Real
	Definir gastosFabricacion Como Real
	Definir costoProduccion Como Real
	Definir precioVenta Como Real
	Escribir 'Ingrese la clave del art�culo (1, 2, 3, 4, 5 o 6): '
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
	Escribir 'Clave del art�culo: ', claveArticulo
	Escribir 'Precio de venta: $', precioVenta
FinFunci�n

// Ejercicio 10
// ENtrada
// Se definen tres variables: "numeroPersonas", "costoPorPersona" y "presupuestoTotal".
// Se solicita al usuario que ingrese el n�mero de personas que asistir�n al evento.
// Proceso 
// Se utiliza una serie de declaraciones condicionales para determinar el costo por persona en funci�n del n�mero de personas que asistir�n. Si el n�mero de personas es mayor a 300, el costo por persona ser� de $75.0. Si el n�mero de personas es mayor a 200 y menor o igual a 300, el costo por persona ser� de $85.0. De lo contrario, el costo por persona ser� de $95.0.
// salida
// Una vez que se ha determinado el costo por persona, se calcula el presupuesto total multiplicando el n�mero de personas por el costo por persona.
// Finalmente, se muestra al usuario el costo por platillo por persona y el presupuesto total.
Funci�n CalcularPresupuesto
	Definir numeroPersonas Como Entero
	Definir costoPorPersona Como Real
	Definir presupuestoTotal Como Real
	Escribir 'Ingrese el n�mero de personas: '
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
FinFunci�n

// Ejercicio 11
// Entrada
// El pseudoc�digo que proporcionaste es un algoritmo que determina el signo de un n�mero. 
// Proceso 
// Primero se define la variable num como real y se le pide al usuario que ingrese un n�mero.
// Salida
// Luego, si el n�mero es igual a cero, se imprime "El n�mero es neutro". Si el n�mero es mayor que cero, se imprime "El n�mero es positivo". Si el n�mero es menor que cero, se imprime "El n�mero es negativo".
Funci�n DeterminarSigno
	Definir num Como Real
	Escribir 'Ingrese un n�mero: '
	Leer num
	Si num=0 Entonces
		Escribir 'El n�mero es neutro'
	SiNo
		Si num>0 Entonces
			Escribir 'El n�mero es positivo'
		SiNo
			Si num<0 Entonces
				Escribir 'El n�mero es negativo'
			FinSi
		FinSi
	FinSi
FinFunci�n

// Ejercicio 12
// Entrada
// Se definen las variables "num1" y "num2" como enteros.
// Se le pide al usuario que ingrese el primer n�mero y se guarda en la variable "num1".
// Se le pide al usuario que ingrese el segundo n�mero y se guarda en la variable "num2".
// Proceso 
// Si los n�meros son iguales, se muestra el mensaje "Los n�meros son iguales".
// Si los n�meros no son iguales, se compara cu�l es mayor o menor.
// Salida
// Si el primer n�mero es menor que el segundo, se muestra el mensaje "El primer n�mero es menor que el segundo".
// Si el primer n�mero es mayor que el segundo, se muestra el mensaje "El primer n�mero es mayor que el segundo".
Funci�n CompararNumeros
	Definir num1, num2 Como Entero
	Escribir 'Ingrese el primer n�mero: '
	Leer num1
	Escribir 'Ingrese el segundo n�mero: '
	Leer num2
	Si num1=num2 Entonces
		Escribir 'Los n�meros son iguales'
	SiNo
		Si num1<num2 Entonces
			Escribir 'El primer n�mero es menor que el segundo'
		SiNo
			Escribir 'El primer n�mero es mayor que el segundo'
		FinSi
	FinSi
FinFunci�n

// Ejercicio 13
// Entrada
// La funci�n comienza definiendo tres variables num�ricas: num1, num2 y num3. Luego, 
// se le pide al usuario que ingrese los valores de los tres n�meros. 
// La funci�n luego compara los tres n�meros y determina cu�l es el mayor. 
// Proceso 
// Si el primer n�mero es mayor que los otros dos, entonces ese es el n�mero mayor. 
// Si no es as�, se compara el segundo n�mero con los otros dos. 
// Si el segundo n�mero es mayor que los otros dos, entonces ese es el n�mero mayor. Si no es as�, 
// Salida
// entonces el tercer n�mero es el mayor. Si los tres n�meros son iguales, entonces se imprime "Los n�meros son iguales"
Funci�n DeterminarMayor
	Definir num1, num2, num3 Como Entero
	Escribir 'Ingrese el primer n�mero: '
	Leer num1
	Escribir 'Ingrese el segundo n�mero: '
	Leer num2
	Escribir 'Ingrese el tercer n�mero: '
	Leer num3
	Si num1>num2 Y num1>num3 Entonces
		Escribir 'El primer n�mero es el mayor'
	SiNo
		Si num2>num1 Y num2>num3 Entonces
			Escribir 'El segundo n�mero es el mayor'
		SiNo
			Si num3>num1 Y num3>num2 Entonces
				Escribir 'El tercer n�mero es el mayor'
			SiNo
				Escribir 'Los n�meros son iguales'
			FinSi
		FinSi
	FinSi
FinFunci�n

// Ejercicio 14
// Entrada
// Primero se define la variable num como real y se le pide al usuario que ingrese un n�mero.
// Luego se eval�a si el n�mero es igual a cero. Si es as�, se imprime "El n�mero es neutro". 
// Proceso 
// Si no es cero, se eval�a si el n�mero es mayor que cero. Si es as�, se imprime "El n�mero es positivo".
// Si no es mayor que cero, entonces el n�mero es negativo y se imprime "El n�mero es negativo"
// SALIDA
// FinSi
Funci�n DeterminarSigno2
	Definir num Como Real
	Escribir 'Ingrese un n�mero: '
	Leer num
	Si num=0 Entonces
		Escribir 'El n�mero es neutro'
	SiNo
		Si num>0 Entonces
			Escribir 'El n�mero es positivo'
		SiNo
			Si num<0 Entonces
				Escribir 'El n�mero es negativo'
			FinSi
		FinSi
	FinSi
FinFunci�n

// Ejercicio 15
// Entrado
// Se define la variable "numero" como un n�mero entero.
// Se imprime el mensaje "numero pares entre 0 y 100".
// Se lee el n�mero ingresado por el usuario y se guarda en la variable "num".
// Proseso
// Mientras "num" sea menor o igual a 100, se ejecuta el siguiente bloque de c�digo:
// Si "num" es divisible por 2, se imprime el valor de "num".
// salida
// Se incrementa el valor de "num" en 1.
// Fin del algoritmo.
Funci�n paresentre10y100
	Definir numero Como Entero
	Escribir 'numero pares entre 0 y 100'
	Leer num
	Mientras num<=100 Hacer
		Si num MOD 2=0 Entonces
			Escribir numero
		FinSi
		num <- num+1
	FinMientras
FinFunci�n

// Ejercicio 16
// Entrada
// Se definen las variables "numero", "suma_numeros", "cantidad_numeros" y "contador" como reales y enteras.
// Se inicializan las variables "suma_numeros", "cantidad_numeros" y "contador" en 0.
// Se solicita al usuario que ingrese una serie de n�meros distintos de cero. Para finalizar la serie se debe ingresar 0.
// Se repite el siguiente proceso hasta que se ingrese 0:
// Se solicita al usuario que ingrese un n�mero.
// Prosceso
// Si el n�mero ingresado es distinto de cero, se suma a la variable "suma_numeros" y se incrementa en 1 la variable "cantidad_numeros".
// Si se ingresaron n�meros distintos de cero, se calcula el promedio y se muestra por pantalla la cantidad de n�meros distintos de cero y el promedio.
// Salida
// En caso contrario, se muestra por pantalla que no se ingresaron n�meros distintos de cero.
Funci�n sumadenumerosR
	Definir numero, suma_numeros, cantidad_numeros Como Real
	Definir contador Como Entero
	suma_numeros <- 0
	cantidad_numeros <- 0
	contador <- 0
	Escribir 'Ingrese una serie de n�meros distintos de cero. Ingrese 0 para finalizar.'
	Repetir
		Escribir 'Ingrese un n�mero: '
		Leer numero
		Si numero<>0 Entonces
			suma_numeros <- suma_numeros+numero
			cantidad_numeros <- cantidad_numeros+1
		FinSi
	Hasta Que numero=0
	Si cantidad_numeros>0 Entonces
		promedio <- suma_numeros/cantidad_numeros
		Escribir 'La cantidad de n�meros distintos de cero es: ', cantidad_numeros
		Escribir 'El promedio de los n�meros distintos de cero es: ', promedio
	SiNo
		Escribir 'No se ingresaron n�meros distintos de cero.'
	FinSi
FinFunci�n

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
Funci�n Requerimiento
	Definir logika, requerimientos, calculo, promedio Como Real
	Escribir 'Digite su promedio de logica: '
	Leer logika
	Escribir 'Digite su promedio de requerimientos: '
	Leer requerimientos
	Escribir 'Digite su promedio de calculo: '
	Leer calculo
	promedio <- (logika+requerimientos+calculo)/3
	Escribir 'El promedio general de todas las asignaturas es: ', promedio
FinFunci�n

// Ejercicio 18
// Entrada
// Primero se definen dos variables como reales: 
// sumaEstaturas y contadorPersonas. Luego se inicializan ambas variables en 
// cero. Despu�s se entra en un ciclo que se repetir� hasta que el usuario ingrese 
// Proceso 
// Una estatura igual a cero. Dentro del ciclo se le pide al usuario que ingrese la estatura 
// de una persona y si la estatura es diferente de cero, se suma la estatura a la variable 
// sumaEstaturas y se incrementa el contadorPersonas en uno. Al salir del ciclo, si el 
// Salida
// contadorPersonas es mayor que cero, se calcula el promedio de las estaturas y 
// se muestra en pantalla. Si no, se muestra un mensaje indicando que no se ingresaron estaturas
Funci�n EstaturaPromedio
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
FinFunci�n

// Ejercicio 19
// Entrada
// Primero se definen las variables que se van a utilizar en el programa. Luego se inicializan las variables que van a contar 
// la cantidad de alumnos en cada rango y la suma de los pesos de los alumnos en cada rango.
// Proceso 
// despu�s se pide al usuario que ingrese el peso del alumno y se entra en un ciclo que se 
// repite hasta que el usuario ingresa 0. Dentro del ciclo se verifica en qu� rango de peso se encuentra el 
// alumno y se actualizan las variables correspondientes.
// Saliida
// Finalmente, se calcula el promedio de peso para cada rango y 
// se muestra la cantidad de alumnos y el promedio de peso para cada rango.
Funci�n EstadisticaPesosAlumnos
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
FinFunci�n

// Ejercicio 20
// entrada
// Primero se define la variable "c" como una cadena y la variable "valor_ascii" como un entero.
// Luego se le pide al usuario que ingrese un car�cter vocal.
// Se lee el car�cter ingresado por el usuario y se guarda en la variable "c".
// Proceso 
// Si el car�cter ingresado es ?a? o ?A?, entonces el valor ASCII de la vocal es 97.
// Si el car�cter ingresado es ?e? o ?E?, entonces el valor ASCII de la vocal es 101.
// Si el car�cter ingresado es ?i? o ?I?, entonces el valor ASCII de la vocal es 105.
// Si el car�cter ingresado es ?o? o ?O?, entonces el valor ASCII de la vocal es 111.
// Si el car�cter ingresado es ?u? o ?U?, entonces el valor ASCII de la vocal es 117.
// Si el car�cter ingresado no es una vocal, se muestra un mensaje indicando que no lo 
// salida
// Finalmente, si se ha encontrado un valor ASCII para la vocal ingresada, se muestra en pantalla.
Funci�n ObtenerValorASCII
Definir c Como Car�cter
Definir valor_ascii Como Entero

Escribir "Ingrese un car�cter vocal: "
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
										Escribir "El car�cter no es una vocal"
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


FinFunci�n

// Ejercicio 21
// Entrada
// Primero, se define la variable "numMes" como un n�mero entero.
// Luego, se le pide al usuario que ingrese un n�mero del 1 al 12.
// El n�mero ingresado por el usuario se guarda en la variable "numMes".
// A continuaci�n, se utiliza la estructura de control "Seg�n" para comparar el valor de "numMes" con los n�meros del 1 al 12.
// Proceso
// Si "numMes" es igual a 1, se muestra el mensaje "El n�mero X corresponde al mes de ENERO", donde X es el n�mero ingresado por el usuario.
// Si "numMes" es igual a 2, se muestra el mensaje "El n�mero X corresponde al mes de FEBRERO", donde X es el n�mero ingresado por el usuario.
// Si "numMes" es igual a 3, se muestra el mensaje "El n�mero X corresponde al mes de MARZO", donde X es el n�mero ingresado por el usuario.
// Si "numMes" es igual a 4, se muestra el mensaje "El n�mero X corresponde al mes de ABRIL", donde X es el n�mero ingresado por el usuario.
// Si "numMes" es igual a 5, se muestra el mensaje "El n�mero X corresponde al mes de MAYO", donde X es el n�mero ingresado por el usuario.
// Si "numMes" es igual a 6, se muestra el mensaje "El n�mero X corresponde al mes de JUNIO", donde X es el n�mero ingresado por el usuario.
// Si "numMes" es igual a 7, se muestra el mensaje "El n�mero X corresponde al mes de JULIO", donde X es el n�mero ingresado por el usuario.
// Si "numMes" es igual a 8, se muestra el mensaje "El n�mero X corresponde al mes de AGOSTO", donde X es el n�mero ingresado por el usuario.
// Si "numMes" es igual a 9, se muestra el mensaje "El n�mero X corresponde al mes de SEPTIEMBRE", donde X es el n�mero ingresado por el usuario.
// Si "numMes" es igual a 10, se muestra el mensaje "El n�mero X corresponde al mes de OCTUBRE", donde X es el n�mero ingresado por el usuario.
// Si "numMes" es igual a 11, se muestra el mensaje "El n�mero X corresponde al mes de NOVIEMBRE", donde X es el n�mero ingresado por el usuario.
// SALIDA
// Si "numMes" es igual a 12, se muestra el mensaje "El n�mero X corresponde al mes de DICIEMBRE", donde X es el n�mero ingresado por el usuario.
// Si "numMes" no est� entre los n�meros del 1 al 12 (es decir, si tiene otro valor), se muestra un mensaje de error que dice: "ERROR: Valor inv�lido".
Funci�n MensajeMes
	Definir numMes Como Entero
	Escribir 'Ingrese un n�mero del 1 al 12: '
	Leer numMes
	Seg�n numMes Hacer
		1:
			Escribir 'El n�mero ', numMes, ' corresponde al mes de ENERO'
		2:
			Escribir 'El n�mero ', numMes, ' corresponde al mes de FEBRERO'
		3:
			Escribir 'El n�mero ', numMes, ' corresponde al mes de MARZO'
		4:
			Escribir 'El n�mero ', numMes, ' corresponde al mes de ABRIL'
		5:
			Escribir 'El n�mero ', numMes, ' corresponde al mes de MAYO'
		6:
			Escribir 'El n�mero ', numMes, ' corresponde al mes de JUNIO'
		7:
			Escribir 'El n�mero ', numMes, ' corresponde al mes de JULIO'
		8:
			Escribir 'El n�mero ', numMes, ' corresponde al mes de AGOSTO'
		9:
			Escribir 'El n�mero ', numMes, ' corresponde al mes de SEPTIEMBRE'
		10:
			Escribir 'El n�mero ', numMes, ' corresponde al mes de OCTUBRE'
		11:
			Escribir 'El n�mero ', numMes, ' corresponde al mes de NOVIEMBRE'
		12:
			Escribir 'El n�mero ', numMes, ' corresponde al mes de DICIEMBRE'
		De Otro Modo:
			Escribir 'ERROR: Valor inv�lido'
	FinSeg�n
FinFunci�n

// Ejercicio 22
// Entrada
// La funci�n "Kilometrosrecorridos" recibe como entrada el n�mero de pasajes
// que se van a calcular. Luego, se define la variable "contador" que almacena 
// el n�mero de pasajes que se van a calcular. Se leen los valores de los pasajes
// y se calcula el precio del pasaje seg�n la distancia recorrida. Si la distancia
// Proceso
// es menor o igual a 100 km, el precio es igual a la distancia recorrida. 
// Si la distancia es mayor a 100 km, el precio es igual a la distancia recorrida multiplicada 
// por 1.2. Se calcula la cantidad de pasajes con una distancia menor o igual a 100 km
// salida
// y la cantidad de pasajes con una distancia mayor a 100 km. Tambi�n se calcula el promedio
// de precios de los pasajes. Si no se ingresaron datos de pasajes, se muestra un mensaje indicando que no se ingresaron datos.
Funci�n Kilometrosrecorridos
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
FinFunci�n

// Ejercicio 23
// Entrada
// El usuario ingresa el peso del paquete en kilogramos.
// Proceso
// Si el peso es menor o igual a 5 kg:
// Se le pedir� al usuario que ingrese la zona de destino (1: Am�rica del Norte, 2: Am�rica Central, 3: Am�rica del Sur, 4: Europa, 5: Asia).
// Se calcular� el costo del servicio de paqueter�a en funci�n de la zona de destino y el peso del paquete.
// Salida
// Se imprimir� "El costo del servicio de paqueter�a es: " seguido por el costo calculado.
// Si el peso es mayor que 5 kg:
// Se imprimir� "El paquete excede el peso permitido. No se puede transportar."
Funci�n pesosenkgenpaises
	Escribir 'Ingrese el peso del paquete en kg: '
	Leer peso
	Si peso<=5 Entonces
		Escribir 'Ingrese la zona de destino (1: Am�rica del Norte, 2: Am�rica Central, 3: Am�rica del Sur, 4: Europa, 5: Asia): '
		Leer zona
		Seg�n zona Hacer
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
				Escribir 'Zona no v�lida'
		FinSeg�n
		Escribir 'El costo del servicio de paqueter�a es: ', costo
	SiNo
		Escribir 'El paquete excede el peso permitido. No se puede transportar.'
	FinSi
FinFunci�n

// Ejercicio 24
// Entrada
// Primero se define la variable "c" como una cadena.
// Luego se le pide al usuario que ingrese un car�cter.
// proceso
// Se lee el car�cter ingresado y se guarda en la variable "c".
// Si el car�cter ingresado es un n�mero entre 0 y 9, se imprime "El car�cter es un n�mero".
// Salida
// Si el car�cter ingresado es una vocal (a, e, i, o, u) en may�scula o min�scula, se imprime "El car�cter es una vocal".
// Si el car�cter ingresado no es un n�mero ni una vocal, se imprime "El car�cter no es un n�mero ni una vocal".
Funci�n VerificarCaracter
	Definir c Como Cadena
	Escribir 'Ingrese un car�cter: '
	Leer c
	Si c>='0' Y c<='9' Entonces
		Escribir 'El car�cter es un n�mero'
	SiNo
		Si c='a' O c='e' O c='i' O c='o' O c='u' O c='A' O c='E' O c='I' O c='O' O c='U' Entonces
			Escribir 'El car�cter es una vocal'
		SiNo
			Escribir 'El car�cter no es un n�mero ni una vocal'
		FinSi
	FinSi
FinFunci�n

// Ejercicio 25
// Entrada
// Primero se definen las variables "categoria", "sueldo", "totalSueldo", "totalBonos", "contAuxiliar", "contAgregado" y "contPrincipal".
// Luego se pide al usuario que ingrese la categor�a del profesor (Auxiliar, Agregado o Principal) y el sueldo del profesor.
// Proceso 
// Si la categor�a es Auxiliar, se suma el sueldo al total de sueldos y se suma el 10 MOD  del sueldo al total de bonos. 
// Si la categor�a es Agregado, se suma el sueldo al total de sueldos y se suma el 20 MOD  del sueldo al total de bonos. 
// Si la categor�a es Principal, se suma el sueldo al total de sueldos y se suma el 50 MOD  del sueldo al total de bonos.
// Salida
// luego se pide nuevamente la categor�a del profesor hasta que se ingrese una categor�a diferente a Auxiliar, Agregado o Principal. Finalmente, 
// si hay profesores en cada categor�a, se calcula el promedio de los sueldos y los bonos para cada categor�a y se muestran en pantalla.
Funci�n Sueldoybonos
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
FinFunci�n

// Ejercicio 26
// Entrada
// Se define la variable "sumaEstaturas" y "contadorPersonas" como reales y se inicializan en 0.
// Se le pide al usuario que ingrese la estatura de una persona en cent�metros o que ingrese 0 para terminar.
// Se lee la estatura ingresada por el usuario.
// Proceso 
// Mientras la estatura ingresada sea diferente de 0: a. Se suma la estatura ingresada a la variable "sumaEstaturas".
// b. Se incrementa el contador de personas en 1. c. Se le pide al usuario que ingrese la estatura de una persona en cent�metros o que ingrese 0 para terminar. d. Se lee la estatura ingresada por el usuario./
// Salida
// Si el contador de personas es mayor que 0: a. Se calcula el promedio de estaturas dividiendo la suma total de las estaturas por el n�mero total de personas. b. Se muestra el resultado del promedio de estaturas del grupo.
// Si el contador de personas es igual a 0: a. Se muestra un mensaje indicando que no se ingresaron estaturas y que no se puede calcular el promedio.
Funci�n sumadeestaturas
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
FinFunci�n

// Ejercicio 27
// SALIDA
// Se definen las variables num, cantidadPositivos y totalMultiplos como enteros.
// Se inicializan las variables num, cantidadPositivos y totalMultiplos en 0.
// Se solicita al usuario que ingrese una serie de n�meros positivos (digite un n�mero negativo para terminar).
// Proceso 
// Mientras el n�mero ingresado sea mayor o igual a 0:
// Se solicita al usuario que ingrese un n�mero.
// Si el n�mero ingresado es mayor o igual a 0:
// Si el n�mero es m�ltiplo de 3, se suma a la variable totalMultiplos.
// Salida
// Se incrementa la variable cantidadPositivos en 1.
// Se muestra la cantidad de n�meros positivos m�ltiplos de 3 y su suma.
Funci�n cantidadepositivos
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
FinFunci�n

// Ejercicio 28
// Entrada
// Primero se le pide al usuario que ingrese el tipo de tarjeta y 
// el l�mite de cr�dito actual. Luego, se verifica el tipo de tarjeta
// y se calcula el aumento correspondiente en funci�n del tipo de tarjeta. 
// Proceso
// Si la tarjeta es del tipo 1, el aumento es del 25 MOD , si es del tipo 2, 
// el aumento es del 35 MOD , si es del tipo 3, el aumento es del 40 MOD  y
// Salida
// para cualquier otro tipo de tarjeta, el aumento es del 50 MOD . Finalmente, s
// e calcula el nuevo l�mite de cr�dito sumando el aumento al l�mite actual y se muestra al usuario.
Funci�n tipodetargeta
	Escribir 'Ingrese el tipo de tarjeta (1, 2, 3 u otro): '
	Leer tipoTarjeta
	Escribir 'Ingrese el l�mite de cr�dito actual: '
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
	Escribir 'El nuevo l�mite de cr�dito es: ', nuevoLimite
FinFunci�n

// Ejercicio 29
// ENTRADA
// Primero se definen las variables horasTrabajadas, valorHora, totalHoras y sueldo como enteros. 
// Luego se inicializan totalHoras y sueldo en 0. Despu�s se utiliza un ciclo para pedir las horas trabajadas 
// Proceso 
// y el valor de la hora trabajada para cada uno de los 20 d�as del mes. En cada iteraci�n del ciclo se 
// SALIDA
// suman las horas trabajadas a totalHoras y se calcula el sueldo multiplicando las horas trabajadas por 
// el valor de la hora trabajada y sum�ndolo a sueldo.
Funci�n CalcularSueldo
	Definir horasTrabajadas, valorHora, totalHoras, sueldo Como Entero
	Definir i Como Entero
	totalHoras <- 0
	sueldo <- 0
	Para i<-1 Hasta 20 Hacer
		Escribir 'Ingrese las horas trabajadas en el d�a ', i, ': '
		Leer horasTrabajadas
		Escribir 'Ingrese el valor de la hora trabajada: '
		Leer valorHora
		totalHoras <- totalHoras+horasTrabajadas
		sueldo <- sueldo+(horasTrabajadas*valorHora)
		i <- i+1
	FinPara
	Escribir 'El total de horas trabajadas en el mes es: ', totalHoras
	Escribir 'El sueldo a recibir por las horas trabajadas es: ', sueldo
FinFunci�n // Incrementar el valor de i en cada iteraci�n

// Ejercicio 30
// entrada
// Se define la variable c como una cadena.
// Se le pide al usuario que ingrese un car�cter.
// Se lee el car�cter ingresado por el usuario y se guarda en la variable c.
// Proceso 
// Si el car�cter es una letra (may�scula o min�scula), se imprime "El car�cter es una letra".
// Salida
// Si el car�cter es un signo de puntuaci�n (coma, punto, punto y coma o dos puntos), se imprime "El car�cter es un signo de puntuaci�n".
// Si el car�cter no es una letra ni un signo de puntuaci�n, se imprime "El car�cter no es una letra ni un signo de puntuaci�n".
Funci�n VerificarCaracter3
	Definir c Como Cadena
	Escribir 'Ingrese un car�cter: '
	Leer c
	Si (c>='a' Y c<='z') O (c>='A' Y c<='Z') Entonces
		Escribir 'El car�cter es una letra'
	SiNo
		Si c=',' O c='.' O c=';' O c=':' Entonces
			Escribir 'El car�cter es un signo de puntuaci�n'
		SiNo
			Escribir 'El car�cter no es una letra ni un signo de puntuaci�n'
		FinSi
	FinSi
FinFunci�n

// Ejercicio 31
// Entrada
// Primero se define la variable numDia como un n�mero entero y se le pide al usuario que ingrese un n�mero 
// Proceso 
// del 1 al 7. Luego se utiliza la estructura de control Seg�n para evaluar el valor de numDia y mostrar el d�a de la semana correspondiente. 
// Si numDia es igual a 1, se muestra "LUNES", si es igual a 2, se muestra "MARTES", y as� sucesivamente hasta
// Salida
// llegar a 7 que corresponde a "DOMINGO". Si numDia no est� en el rango del 1 al 7, se muestra "ERROR: Valor inv�lido"
Funci�n VerificarDiaSemana
	Definir numDia Como Entero
	Escribir 'Ingrese un n�mero del 1 al 7: '
	Leer numDia
	Seg�n numDia Hacer
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
			Escribir 'ERROR: Valor inv�lido'
	FinSeg�n
FinFunci�n

// Ejercicio 32
// Entrada
// Primero se definen las variables "num1", "num2" y "num3" como n�meros reales. 
// Proceso 
// Luego se pide al usuario que ingrese los valores de estas variables. Si la condici�n se cumple,
// Salida
// se imprime "El n�mero 1 es el doble del n�mero 2 y un 20% menos que el n�mero 3." de 
Funci�n VerificarNumeros
	Definir num1, num2, num3 Como Real
	Escribir 'Ingrese el n�mero 1: '
	Leer num1
	Escribir 'Ingrese el n�mero 2: '
	Leer num2
	Escribir 'Ingrese el n�mero 3: '
	Leer num3
	Si num1=num2*2 O num1=num3*0.8 Entonces
		Escribir 'El n�mero 1 es el doble del n�mero 2 y un 20% menos que el n�mero 3.'
	SiNo
		Escribir 'El n�mero 1 no cumple las condiciones requeridas.'
	FinSi
FinFunci�n

// Ejercicio 33
// ENTRADA
// El programa comienza definiendo las variables 
// "cantidadVentas", "venta", "contadorMayor1000", "contadorMayor500", "contadorMenorIgual500", "montoMayor1000", "montoMayor500", "montoMenorIgual500"
// Proceso 
// }y "montoTotal". Luego, se le pide al usuario que ingrese la cantidad de ventas realizadas durante el d�a. A continuaci�n, se utiliza un bucle 
// SALIDA
// "Para" para leer cada venta y actualizar las variables correspondientes seg�n su valor. Finalmente, se imprimen los resultados.
Funci�n ejerciciototal
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
	Escribir 'Ingrese la cantidad de ventas realizadas durante el d�a:'
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
	Escribir 'Monto total vendido durante el d�a: $', montoTotal
FinFunci�n

// Ejercicio 34
// ENTRADA
// Primero se definen las variables num, suma e i como enteros.
// Luego se le pide al usuario que ingrese 10 n�meros y se inicializa la variable suma en 0.
// Proceso 
// Despu�s, se utiliza un ciclo for para pedirle al usuario que ingrese los 10 n�meros y sumarlos a la variable suma.
// Salida
// Finalmente, se imprime la suma acumulada de los 10 n�meros ingresados por el usuario
Funci�n numeroentero
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
FinFunci�n

// ejercicio 35
// Entrada
// Se definen las variables num1 y num2 como enteros.
// Se le pide al usuario que ingrese el primer n�mero.
// Se lee el primer n�mero ingresado por el usuario y se guarda en la variable num1.
// Se le pide al usuario que ingrese el segundo n�mero.
// Proceso 
// Se lee el segundo n�mero ingresado por el usuario y se guarda en la variable num2.
// Si los dos n�meros son iguales, se imprime "Los n�meros son iguales".
// Si los dos n�meros no son iguales, se compara cu�l es mayor o menor.
// Salida
// Si el primer n�mero es menor que el segundo, se imprime "El primer n�mero es menor que el segundo".
// Si el primer n�mero es mayor que el segundo, se imprime "El primer n�mero es mayor que el segundo"
Funci�n CompararNumeros2
	Definir num1, num2 Como Entero
	Escribir 'Ingrese el primer n�mero: '
	Leer num1
	Escribir 'Ingrese el segundo n�mero: '
	Leer num2
	Si num1=num2 Entonces
		Escribir 'Los n�meros son iguales'
	SiNo
		Si num1<num2 Entonces
			Escribir 'El primer n�mero es menor que el segundo'
		SiNo
			Escribir 'El primer n�mero es mayor que el segundo'
		FinSi
	FinSi
FinFunci�n

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
