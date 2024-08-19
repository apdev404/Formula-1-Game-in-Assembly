.8086
.model small
.stack 100h
.data
	arr db "Avanzar",0dh,0ah,24h
	ab db "Frenar",0dh,0ah,24h
	der db "Derecha",0dh,0ah,24h
	izq db "Izquierda",0dh,0ah,24h
	linea db 219d,0dh,0ah,24h
	spriteObs db "XXXXXXXXXXXXXX",0dh,0ah,24h
	spriteObsMedio db "XXXXXXXXXXXXXX",0dh,0ah,24h
	columniiita db 20  ;20 es el medio 
	posf1 db 0
	posc1 db 0
	puntuacion db "Vueltas: ",24h
	numeroDec db 30h,30h,30h, 24h
	cantidad db 0
	vueltas db 0
	vueltasmos db 30h,30h,30h,24h
	vueltastot db "/052",0dh,0ah,24h
	
	perdistetxt db "GAME  OVER",0dh,0ah,24h
	reinicio db "	Presione una tecla para volver",0dh,0ah,24h
	flagwin db 0
	pixel db 219d,0dh,0ah,24h
	meepty db 219d,0dh,0ah,24h
	insrt db "PRESIONE CUALQUIER TECLA",0dh,0ah,24h
	clin db "                        ",0dh,0ah,24h
	jugarr db "JUGAR",0dh,0ah,24h
	salirr db "SALIR",0dh,0ah,24h
	controles db "CONTROLES",0dh,0ah,24h
	controless db "-CONTROLES-",0dh,0ah,24h
	flechita db 62d,0dh,0ah,24h
	flechipos db 15
	flechiborro db " ",0dh,0ah,24h
	derechaa db "DERECHA",0dh,0ah,24h
	izquierdaa db "IZQUIERDA",0dh,0ah,24h
	comillass db 34d,0dh,0ah,24h
	ddd db "D",0dh,0ah,24h
	aa db "A",0dh,0ah,24h
	exitcontrols db "VOLVER AL MENU",0dh,0ah,24h
	flag db 0
;----------
;variables funcion perdiste 
juegardenuevo db "JUGAR DE NUEVO (1)",0dh,0ah,24h 
salirrr db "    SALIR(2)",0dh,0ah,24h
flagx db 1

;variables pa la cinematica
ejeymeta db -1
ejexmeta db 0
ejeymetados db -2
ejeymetatres db -3
meta db 219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,0dh,0ah,24h
metados db 32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,0dh,0ah,24h
metatres db 219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,219d,32d,0dh,0ah,24h
ganastee db "GANASTE!",0dh,0ah,24h
;-------------------------
;variables del auto obstaculo 1
	filauto1 db -12
	filauto2 db -11
	filauto3 db -10
	filauto4 db -9
	filauto5 db -8
	filauto6 db -7
	filauto7 db -6
	filauto8 db -5


;-------------------------
;-------------------------
;variables del auto obstaculo 2 y 3
	filauto31 db -37
	filauto32 db -36
	filauto33 db -35
	filauto34 db -34
	filauto35 db -33
	filauto36 db -32
	filauto37 db -31
	filauto38 db -30


;-------------------------
;-------------------------
;variables del auto obstaculo 4 y 5 (izq y medio)
	filauto41 db -64
	filauto42 db -63
	filauto43 db -62
	filauto44 db -61
	filauto45 db -60
	filauto46 db -59
	filauto47 db -58
	filauto48 db -57
;-------------------------

;-------------------------
;variables del auto obstaculo 6 (derecha)
	filauto61 db -93
	filauto62 db -92
	filauto63 db -91
	filauto64 db -90
	filauto65 db -89
	filauto66 db -88
	filauto67 db -87
	filauto68 db -86
;-------------------------

;-------------------------
;variables del auto obstaculo 7 (medio)
	filauto71 db -110
	filauto72 db -109
	filauto73 db -108
	filauto74 db -107
	filauto75 db -106
	filauto76 db -105
	filauto77 db -104
	filauto78 db -103
;-------------------------

;-------------------------
;variables del auto obstaculo 8 y 9 (izq y der)
	filauto81 db -128
	filauto82 db -127
	filauto83 db -126
	filauto84 db -125
	filauto85 db -124
	filauto86 db -123
	filauto87 db -122
	filauto88 db -121
;-------------------------

;------------------------------------------
;	VARIABLES DE SPRITE AUTO3 (el de la derecha)
;------------------------------------------
	ejexxd19 db 27
	ejexxd20 db 28
	ejexxd21 db 29
	ejexxd22 db 30
	ejexxd23 db 31
	ejexxd24 db 32
	ejexxd25 db 33
	ejexxd26 db 34

;------------------------------------------
;	VARIABLES DE SPRITE AUTO3 (el de la izquierda)
;------------------------------------------
	

	;ruedax db 219d,0dh,0ah,24h
	;cuadrox db 219d,0dh,0ah,24h
	;suspx db 205d,0dh,0ah,24h
	;aledelx db 223d,0dh,0ah,24h
	;aletrasx db 220d,0dh,0ah,24h
	;lipx db 95d,0dh,0ah,24h


	ejexx319 db 5
	ejexx320 db 6
	ejexx321 db 7
	ejexx322 db 8
	ejexx323 db 9
	ejexx324 db 10
	ejexx325 db 11
	ejexx326 db 12


	
;------------------------------------------
;	VARIABLES DE SPRITE AUTO2 (el del medio)
;------------------------------------------
	
	ruedax db 219d,0dh,0ah,24h
	cuadrox db 219d,0dh,0ah,24h
	suspx db 205d,0dh,0ah,24h
	aledelx db 223d,0dh,0ah,24h
	aletrasx db 220d,0dh,0ah,24h
	lipx db 95d,0dh,0ah,24h


	ejexx19 db 16
	ejexx20 db 17
	ejexx21 db 18
	ejexx22 db 19
	ejexx23 db 20
	ejexx24 db 21
	ejexx25 db 22
	ejexx26 db 23

;------------------------------------------
;	VARIABLES DE SPRITE AUTO
;------------------------------------------
	rueda db 219d,0dh,0ah,24h
	cuadro db 219d,0dh,0ah,24h
	susp db 205d,0dh,0ah,24h
	aledel db 223d,0dh,0ah,24h
	aletras db 220d,0dh,0ah,24h
	lip db 95d,0dh,0ah,24h

	ejex19 db 16
	ejex20 db 17
	ejex21 db 18
	ejex22 db 19
	ejex23 db 20
	ejex24 db 21
	ejex25 db 22
	ejex26 db 23
	
	ejey23 db 23
	ejey22 db 22
	ejey21 db 21
	ejey20 db 20
	ejey19 db 19
	ejey18 db 18
	ejey17 db 17
	ejey16 db 16


;------------------------------------------
	contauto db 0 
;------------------------------------------
;POSICIONES EN EL EJE X:
;	AUTOS LADO IZQUIERDO: 5 - 12
;	AUTOS MEDIO: 16 - 23
;	AUTOS LADO DERECHO: 27 - 34
.code

		main proc
		mov ax, @data
		mov ds, ax
		mov cl,1 

		call cls

;INTERRUPCION PARA LOS GRAFICOS
		mov ax, 35
		int 80h

		;call colorfondo1
		mov ah,01h 
		mov ch,0026h  
		mov cl,0007h
		int 10h 
		cmp flagx,2
		je juego 
		eleccionestitulos:
		call titu1
		cmp flechipos, 15
		je juego
		cmp flechipos,19 
		je finproyecto 
		
		cmp flechipos,17
		je controlesprint 

	controlesprint:
		call cls
		mov ah,01h 
		mov ch,0026h  
		mov cl,0007h
		int 10h 
		call printcontrols
		call cls
		mov ah,01h 
		mov ch,0026h  
		mov cl,0007h
		int 10h 
		jmp eleccionestitulos


	juego:	

	recibetecla:
		
		cmp flagwin,1
		je final
		call movimiento
	
		;call limpiaPantalla
		;call pixelcin
		
		call carretera
		call convueltas
		;call comparacion 
		
		
		cmp al,1Bh
		je final
		add vueltas,1
		cmp vueltas,52
		ja casifin

		jmp recibetecla

	final:
		cmp flagwin,1
		je perdistee 
	perdistee:
		call perdiste 
		call convueltas
		mantengo:
		jmp mantengo
casifin:
call cinematica


finproyecto:
		mov ax, 4c00h
		int 21h
main endp


meta1 proc
	mov ah,02h  
	mov bh,0
	mov dh,ejeymeta;fila
	mov dl,ejexmeta;columna
	int 10h
	mov ah,9
	mov dx,offset meta
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,ejeymetados;fila
	mov dl,ejexmeta;columna
	int 10h
	mov ah,9
	mov dx,offset metados
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,ejeymetatres;fila
	mov dl,ejexmeta;columna
	int 10h
	mov ah,9
	mov dx,offset metatres
	int 21h

ret 
meta1 endp

cinematica proc 
mov flagx,2
muevometa:
	call cls 
	call meta1
	call sumaejey
	call spriteAuto
	mov ah, 86h
	mov cx,0001h
	mov dx,86A0h
	int 15h
	mov ah, 86h
	mov cx,0001h
	mov dx,86A0h
	int 15h
	cmp ejeymeta,8
	jbe muevometa 
subeauto:
	call cls 
	call sumaejeyauto
	add contauto,1
	call meta1
	call spriteAuto 
	mov ah, 86h
	mov cx,0001h
	mov dx,86A0h
	int 15h
	mov ah, 86h
	mov cx,0001h
	mov dx,86A0h
	int 15h
	;cmp ejey22,-12
	;jbe fincine
	cmp contauto,23 
	ja fincine
	jmp subeauto
fincine:
	call cls 
	call meta1 
	call ganastetxt
teclax:	
	mov ah,8
	int 21h
	cmp al,49d 
	je jugarotra
	cmp al,50d 
	je nojuegomas
	jmp teclax
jugarotra:
	call reiniciartodo
	call main
nojuegomas:
	mov ax,4c00h
	int 21h


ret 
cinematica endp

ganastetxt proc 
	mov ah,02h  
	mov bh,0
	mov dh,15;fila
	mov dl,16;columna
	int 10h
	mov ah,9
	mov dx,offset ganastee 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,18;fila
	mov dl,13;columna
	int 10h
	mov ah,9
	mov dx,offset juegardenuevo 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,19;fila
	mov dl,12;columna
	int 10h
	mov ah,9
	mov dx,offset salirrr 
	int 21h



ret 
ganastetxt endp

sumaejeyauto proc 
sub ejey23,1 
sub ejey22,1 
sub ejey21,1 
sub ejey20,1 
sub ejey19,1 
sub ejey18,1 
sub ejey17,1 
sub ejey16,1 


ret 
sumaejeyauto endp


sumaejey proc 
add ejeymeta,1
add ejeymetados,1
add ejeymetatres,1
ret 
sumaejey endp



reiniciartodo proc
	;Reinicio posicion jugador
	mov	ejex19,16
	mov	ejex20,17
	mov	ejex21,18
	mov	ejex22,19
	mov	ejex23,20
	mov	ejex24,21
	mov	ejex25,22
	mov	ejex26,23

	mov ejey23, 23
	mov ejey22, 22
	mov ejey21, 21
	mov ejey20, 20
	mov ejey19, 19
	mov ejey18, 18
	mov ejey17, 17
	mov ejey16, 16

	;REINICIO FILAS OBSTACULOS
				;variables del auto obstaculo 1
		mov	filauto1 ,-12
		mov	filauto2 ,-11
		mov	filauto3 ,-10
		mov	filauto4 ,-9
		mov	filauto5 ,-8
		mov	filauto6 ,-7
		mov	filauto7 ,-6
		mov	filauto8 ,-5


		;-------------------------
		;-------------------------
		;variables del auto obstaculo 2 y 3
		mov filauto31 ,-37
		mov filauto32 ,-36
		mov filauto33 ,-35
		mov filauto34 ,-34
		mov filauto35 ,-33
		mov filauto36 ,-32
		mov filauto37 ,-31
		mov filauto38 ,-30


		;-------------------------
		;-------------------------
		;variables del auto obstaculo 4 y 5 (izq y medio)
		mov	filauto41 ,-64
		mov	filauto42 ,-63
		mov	filauto43 ,-62
		mov	filauto44 ,-61
		mov	filauto45 ,-60
		mov	filauto46 ,-59
		mov	filauto47 ,-58
		mov	filauto48 ,-57
		;-------------------------

		;-------------------------
		;variables del auto obstaculo 6 (derecha)
		mov filauto61 ,-93
		mov filauto62 ,-92
		mov filauto63 ,-91
		mov filauto64 ,-90
		mov filauto65 ,-89
		mov filauto66 ,-88
		mov filauto67 ,-87
		mov filauto68 ,-86
		;-------------------------

		;-------------------------
		;variables del auto obstaculo 7 (medio)
		mov filauto71 ,-110
		mov filauto72 ,-109
		mov filauto73 ,-108
		mov filauto74 ,-107
		mov filauto75 ,-106
		mov filauto76 ,-105
		mov filauto77 ,-104
		mov filauto78 ,-103
		;-------------------------

		;-------------------------
		;variables del auto obstaculo 8 y 9 (izq y der)
		mov	filauto81 ,-128
		mov	filauto82 ,-127
		mov	filauto83 ,-126
		mov	filauto84 ,-125
		mov	filauto85 ,-124
		mov	filauto86 ,-123
		mov	filauto87 ,-122
		mov	filauto88 ,-121
	;------------------------------------------
	;	FIN REINICIO OBSTACULOS
	;------------------------------------------

;REINICIO VUELTAS
	mov vueltas, 0
	mov si,0
	flush:
		cmp vueltasmos[si],24h 
		je finflush
		mov vueltasmos[si], 30h
		inc si
		jmp flush 
	finflush:

ret
reiniciartodo endp  


;--------------------------------------------------
;		COMPARACIONES DE COLISIONES
;--------------------------------------------------
comparacionauto1 proc 
	cmp vueltas,6
	jbe finprocc
	cmp vueltas, 11
	jae finprocc

	;Comparacion de colisioon:
		cmp ejex26, 17
		jae casichoca
		cmp ejex20, 17
		jae casichoca
		jmp finprocc
		casichoca:
		cmp ejex26, 22
		jbe choco
		cmp ejex20, 22
		jbe choco
		jmp finprocc
		choco:
		call perdiste

	finprocc:
ret 
comparacionauto1 endp
	

comparacionauto2 proc 
	cmp vueltas,15
	jbe finprocc2
	cmp vueltas, 19
	jae finprocc2

		cmp ejex26, 6
		jae casichocaizq
		cmp ejex20, 6
		jae casichocaizq
		casichocaizq:
		cmp ejex26, 11
		jbe chocoo
		cmp ejex20,11
		jbe chocoo
		jmp finprocc2
		chocoo:
		call perdiste

	finprocc2:
ret
comparacionauto2 endp


comparacionauto3 proc 
	cmp vueltas,15
	jbe finprocc3
	cmp vueltas, 19
	jae finprocc3

		cmp ejex26, 28
		jae casichocader
		cmp ejex20, 28
		jae casichocader
		jmp finprocc3
		casichocader:
		cmp ejex26, 33
		jbe chocoo3
		cmp ejex20,33
		jbe chocoo3
		jmp finprocc3
		chocoo3:
		call perdiste

	finprocc3:
ret
comparacionauto3 endp



comparacionauto4 proc
	cmp vueltas,24
	jbe finprocc4
	cmp vueltas, 28
	jae finprocc4

		cmp ejex26, 6
		jae casichocaizq4
		cmp ejex20, 6
		jae casichocaizq4
	
		casichocaizq4:
		cmp ejex26, 11
		jbe choco4
		cmp ejex20,11
		jbe choco4
		jmp finprocc4
		choco4:
		call perdiste

	finprocc4:
ret
comparacionauto4 endp



comparacionauto5 proc
	cmp vueltas,24
	jbe finprocc5
	cmp vueltas, 28
	jae finprocc5

		
		cmp ejex26, 17
		jae casichocader5
		cmp ejex20, 17
		jae casichocader5
		jmp finprocc5
		casichocader5:
		cmp ejex26, 22
		jbe choco5
		cmp ejex20,22
		jbe choco5
		jmp finprocc5
		choco5:
		call perdiste

	finprocc5:
ret
comparacionauto5 endp


comparacionauto6 proc
	cmp vueltas,34
	jbe finprocc6
	cmp vueltas, 38
	jae finprocc6

		
		cmp ejex26, 28
		jae casichocader6
		cmp ejex20, 28
		jae casichocader6
		jmp finprocc6
		casichocader6:
		cmp ejex26, 33
		jbe choco6
		cmp ejex20,33
		jbe choco6
		jmp finprocc6
		choco6:
		call perdiste

	finprocc6:
ret
comparacionauto6 endp


comparacionauto7 proc
	cmp vueltas,40
	jbe finprocc7
	cmp vueltas, 44
	jae finprocc7

		
		cmp ejex26, 17
		jae casichocader7
		cmp ejex20, 17
		jae casichocader7
		jmp finprocc7
		casichocader7:
		cmp ejex26, 22
		jbe choco7
		cmp ejex20,22
		jbe choco7
		jmp finprocc7
		choco7:
		call perdiste

	finprocc7:
ret
comparacionauto7 endp


comparacionauto8 proc
	cmp vueltas,46
	jbe finprocc8
	cmp vueltas, 50
	jae finprocc8

		
		cmp ejex26, 6
		jae casichocader8
		cmp ejex20, 6
		jae casichocader8
		jmp finprocc8
		casichocader8:
		cmp ejex26, 11
		jbe choco8
		cmp ejex20,11
		jbe choco8
		jmp finprocc8
		choco8:
		call perdiste

	finprocc8:
ret
comparacionauto8 endp



comparacionauto9 proc
	cmp vueltas,46
	jbe finprocc9
	cmp vueltas, 50
	jae finprocc9

		
		cmp ejex26, 28
		jae casichocader9
		cmp ejex20, 28
		jae casichocader9
		jmp finprocc9
		casichocader9:
		cmp ejex26, 33
		jbe choco9
		cmp ejex20,33
		jbe choco9
		jmp finprocc9
		choco9:
		call perdiste

	finprocc9:
ret
comparacionauto9 endp

auto2y3 proc 
cmp vueltas,9 
jbe finfuncc
cmp vueltas,22
jae finfuncc
;cmp filauto,23
;jae finfunc
call spriteAuto3 
call spriteAuto4
finfuncc:
ret
auto2y3 endp

auto4y5 proc 
cmp vueltas,16 
jbe finfuncauto
cmp vueltas,30
jae finfuncauto
;cmp filauto,23
;jae finfunc
call spriteAuto5 
call spriteAuto6
finfuncauto:
ret 
auto4y5 endp


auto6 proc 
cmp vueltas,28
jbe finfuncseis
cmp vueltas,40
jae finfuncseis

call spriteAuto7

finfuncseis:
ret
auto6 endp

auto7 proc 
cmp vueltas,28
jbe finfuncsiete
cmp vueltas,50
jae finfuncsiete

call spriteAuto8

finfuncsiete:
ret
auto7 endp

auto8y9 proc 
cmp vueltas,37
jbe finfuncocho
cmp vueltas,51
jae finfuncocho

call spriteAuto9
call spriteAuto10

finfuncocho:
ret
auto8y9 endp

sumafilauto9y10 proc 
add filauto81,1 
add filauto82,1
add filauto83,1
add filauto84,1
add filauto85,1
add filauto86,1
add filauto87,1
add filauto88,1

ret 
sumafilauto9y10 endp

sumafilauto8 proc 
add filauto71,1 
add filauto72,1
add filauto73,1
add filauto74,1
add filauto75,1
add filauto76,1
add filauto77,1
add filauto78,1

ret 
sumafilauto8 endp

sumafilauto7 proc 
add filauto61,1 
add filauto62,1
add filauto63,1
add filauto64,1
add filauto65,1
add filauto66,1
add filauto67,1
add filauto68,1

ret 
sumafilauto7 endp

sumafilauto56 proc 
add filauto41,1 
add filauto42,1
add filauto43,1
add filauto44,1
add filauto45,1
add filauto46,1
add filauto47,1
add filauto48,1

ret 
sumafilauto56 endp

sumafilauto34 proc  
add filauto31,1 
add filauto32,1
add filauto33,1
add filauto34,1
add filauto35,1
add filauto36,1
add filauto37,1
add filauto38,1


ret 
sumafilauto34 endp




;--------------------------------------------------
;		COMPARACIONES DE COLISIONES FIN
;--------------------------------------------------


;--------------------------------------------------
;			PRINTEO PANTALLA JUEGO
;--------------------------------------------------

carretera proc 

		call limpiaPantalla
		call colorfondo1
		call linitas1
		call spriteAuto
		call movimiento
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9
		

		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		mov ah, 86h
		mov cx,0000h
		mov dx,04E20h
		int 15h
		call limpiaPantalla
		call linitas2
		call spriteAuto
		call movimiento
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9


		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		call sumafilauto1 ;baja el eje y del primer obstaculo 
		call sumafilauto34
		call sumafilauto56
		call sumafilauto7
		call sumafilauto8
		call sumafilauto9y10
		call limpiaPantalla
		call colorfondo1
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9


		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		call linitas2
		call spriteAuto
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9


		mov ah, 86h
		mov cx,0000h
		mov dx,04E20h
		int 15h
		call limpiaPantalla
		call linitas3
		call spriteAuto
		call movimiento
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9


		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		call limpiaPantalla
		call colorfondo1
		call linitas3
		call spriteAuto
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9


		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		mov ah, 86h
		mov cx,0000h
		mov dx,04E20h
		int 15h
		call limpiaPantalla
		call linitas4
		call spriteAuto
		call movimiento
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9


		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		call limpiaPantalla
		call colorfondo1
		call linitas4
		call spriteAuto
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9


		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		mov ah, 86h
		mov cx,0000h
		mov dx,04E20h
		int 15h
		call limpiaPantalla
		call linitas5
		call spriteAuto
		call movimiento
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9


		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		call limpiaPantalla
		call colorfondo1
		call linitas5
		call spriteAuto
		call auto1
		call sumafilauto1
		call sumafilauto34
		call sumafilauto56
		call sumafilauto7
		call sumafilauto8
		call sumafilauto9y10
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9


		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		mov ah, 86h
		mov cx,0000h
		mov dx,04E20h
		int 15h

		call limpiaPantalla
		call linitas6
		call spriteAuto
		call movimiento
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9


		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		call limpiaPantalla
		call colorfondo1
		call linitas6
		call spriteAuto
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9


		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		mov ah, 86h
		mov cx,0000h
		mov dx,04E20h
		int 15h

		call limpiaPantalla
		call linitas7
		call spriteAuto
		call movimiento
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9


		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		call limpiaPantalla
		call colorfondo1
		call linitas7
		call spriteAuto
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9


		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		mov ah, 86h
		mov cx,0000h
		mov dx,04E20h
		int 15h

		call limpiaPantalla
		call linitas8
		call spriteAuto
		call movimiento
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9

		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		call limpiaPantalla
		call colorfondo1
		call linitas8
		call spriteAuto
		call sumafilauto1
		call sumafilauto34
		call sumafilauto56
		call sumafilauto7
		call sumafilauto8
		call sumafilauto9y10
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9

		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		mov ah, 86h
		mov cx,0000h
		mov dx,04E20h
		int 15h
		;call limpiaPantalla
		call spriteAuto
		call movimiento
		call auto1
		
		call comparacionauto1
		call comparacionauto2
		call comparacionauto3
		call comparacionauto4
		call comparacionauto5
		call comparacionauto6
		call comparacionauto7
		call comparacionauto8
		call comparacionauto9

		call auto2y3
		call auto4y5
		call auto6
		call auto7
		call auto8y9
		;call spriteAuto
ret
carretera endp 



spriteAuto10 proc 
	mov ah,02h  
	mov bh,0
	mov dh,filauto88;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			ALERON COLOR SECUNDARIO
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto88;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto88;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto88;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto88;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			ALERON COLOR SECUNDARIO FIN
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto88;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto87;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto87;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto87;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto87;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto87;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto87;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexxd19;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexxd26;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto85;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			CASCO
;------------------------------------------------------

	mov ah,02h  
	mov bh,0
	mov dh,filauto85;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto85;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			CASCO FINAL
;------------------------------------------------------




	mov ah,02h  
	mov bh,0
	mov dh,filauto85;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto84;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto84;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto84;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto84;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto83;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto83;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto83;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto83;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto83;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto83;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h




	mov ah,02h  
	mov bh,0
	mov dh,filauto82;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto82;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto82;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,7
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto82;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,7
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto82;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto82;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto81;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto81;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto81;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto81;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


ret 
spriteAuto10 endp


spriteAuto9 proc 
	mov ah,02h  
	mov bh,0
	mov dh,filauto88;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			ALERON COLOR SECUNDARIO
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto88;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,3
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto88;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,3
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto88;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,3
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto88;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,3
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			ALERON COLOR SECUNDARIO FIN
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto88;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto87;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto87;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto87;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto87;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto87;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto87;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexx319;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,7
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,7
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto86;fila
	mov dl, ejexx326;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto85;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			CASCO
;------------------------------------------------------

	mov ah,02h  
	mov bh,0
	mov dh,filauto85;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto85;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			CASCO FINAL
;------------------------------------------------------




	mov ah,02h  
	mov bh,0
	mov dh,filauto85;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto84;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto84;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto84;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto84;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto83;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto83;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,7
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto83;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto83;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto83;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,7
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto83;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h




	mov ah,02h  
	mov bh,0
	mov dh,filauto82;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto82;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto82;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto82;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto82;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto82;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto81;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,3
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto81;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,3
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto81;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,3
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto81;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,3
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


ret 
spriteAuto9 endp 

spriteAuto8 proc 

	mov ah,02h  
	mov bh,0
	mov dh,filauto78;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			ALERON COLOR SECUNDARIO
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto78;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto78;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto78;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto78;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			ALERON COLOR SECUNDARIO FIN
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto78;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto77;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto77;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto77;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto77;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto77;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto77;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto76;fila
	mov dl, ejexx19;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto76;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto76;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto76;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto76;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto76;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto76;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto76;fila
	mov dl, ejexx26;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto75;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			CASCO
;------------------------------------------------------

	mov ah,02h  
	mov bh,0
	mov dh,filauto75;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto75;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			CASCO FINAL
;------------------------------------------------------




	mov ah,02h  
	mov bh,0
	mov dh,filauto75;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto74;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto74;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto74;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto74;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto73;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto73;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto73;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto73;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto73;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto73;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h




	mov ah,02h  
	mov bh,0
	mov dh,filauto72;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto72;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto72;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,7
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto72;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,7
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto72;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto72;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto71;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto71;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto71;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto71;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


ret 
spriteAuto8 endp 

spriteAuto7 proc  
	mov ah,02h  
	mov bh,0
	mov dh,filauto68;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,3
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			ALERON COLOR SECUNDARIO
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto68;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto68;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto68;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto68;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			ALERON COLOR SECUNDARIO FIN
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto68;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,3
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto67;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto67;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto67;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto67;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto67;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto67;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto66;fila
	mov dl, ejexxd19;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto66;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto66;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto66;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto66;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto66;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto66;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto66;fila
	mov dl, ejexxd26;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto65;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			CASCO
;------------------------------------------------------

	mov ah,02h  
	mov bh,0
	mov dh,filauto65;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto65;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			CASCO FINAL
;------------------------------------------------------




	mov ah,02h  
	mov bh,0
	mov dh,filauto65;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto64;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto64;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto64;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto64;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto63;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto63;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto63;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto63;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto63;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto63;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h




	mov ah,02h  
	mov bh,0
	mov dh,filauto62;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto62;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto62;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto62;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto62;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto62;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto61;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,3
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto61;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto61;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto61;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,3
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


ret 
spriteAuto7 endp



spriteAuto6 proc 
	mov ah,02h  
	mov bh,0
	mov dh,filauto48;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			ALERON COLOR SECUNDARIO
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto48;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto48;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto48;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto48;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			ALERON COLOR SECUNDARIO FIN
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto48;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto47;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto47;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto47;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto47;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto47;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto47;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx19;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx26;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto45;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			CASCO
;------------------------------------------------------

	mov ah,02h  
	mov bh,0
	mov dh,filauto45;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto45;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			CASCO FINAL
;------------------------------------------------------




	mov ah,02h  
	mov bh,0
	mov dh,filauto45;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto44;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto44;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto44;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto44;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto43;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto43;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto43;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto43;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto43;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto43;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h




	mov ah,02h  
	mov bh,0
	mov dh,filauto42;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto42;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto42;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto42;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto42;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto42;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,13
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto41;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto41;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto41;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto41;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


ret 
spriteAuto6 endp 

spriteAuto5 proc 
	mov ah,02h  
	mov bh,0
	mov dh,filauto48;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl, 11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			ALERON COLOR SECUNDARIO
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto48;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto48;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto48;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto48;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			ALERON COLOR SECUNDARIO FIN
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto48;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto47;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto47;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto47;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto47;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto47;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto47;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx319;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto46;fila
	mov dl, ejexx326;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto45;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			CASCO
;------------------------------------------------------

	mov ah,02h  
	mov bh,0
	mov dh,filauto45;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,10
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto45;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,10
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			CASCO FINAL
;------------------------------------------------------




	mov ah,02h  
	mov bh,0
	mov dh,filauto45;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto44;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto44;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto44;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto44;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto43;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto43;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto43;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto43;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto43;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto43;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h




	mov ah,02h  
	mov bh,0
	mov dh,filauto42;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto42;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto42;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto42;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto42;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto42;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,11
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto41;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto41;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto41;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto41;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
ret 
spriteAuto5 endp



spriteAuto4 proc 
	mov ah,02h  
	mov bh,0
	mov dh,filauto38;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			ALERON COLOR SECUNDARIO
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto38;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto38;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto38;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto38;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			ALERON COLOR SECUNDARIO FIN
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto38;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto37;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto37;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto37;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto37;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto37;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto37;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexxd19;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexxd26;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto35;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			CASCO
;------------------------------------------------------

	mov ah,02h  
	mov bh,0
	mov dh,filauto35;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto35;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			CASCO FINAL
;------------------------------------------------------




	mov ah,02h  
	mov bh,0
	mov dh,filauto35;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto34;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto34;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto34;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto34;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto33;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto33;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto33;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto33;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto33;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto33;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h




	mov ah,02h  
	mov bh,0
	mov dh,filauto32;fila
	mov dl, ejexxd20;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto32;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto32;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto32;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto32;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto32;fila
	mov dl, ejexxd25;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto31;fila
	mov dl, ejexxd21;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto31;fila
	mov dl, ejexxd22;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto31;fila
	mov dl, ejexxd23;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto31;fila
	mov dl, ejexxd24;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


ret 
spriteAuto4 endp

spriteAuto3 proc 
	mov ah,02h  
	mov bh,0
	mov dh,filauto38;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			ALERON COLOR SECUNDARIO
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto38;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto38;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto38;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto38;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			ALERON COLOR SECUNDARIO FIN
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto38;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto37;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto37;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto37;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto37;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto37;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto37;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexx319;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto36;fila
	mov dl, ejexx326;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto35;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			CASCO
;------------------------------------------------------

	mov ah,02h  
	mov bh,0
	mov dh,filauto35;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto35;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			CASCO FINAL
;------------------------------------------------------




	mov ah,02h  
	mov bh,0
	mov dh,filauto35;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto34;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,6
    mov al, cuadrox
    mov bh, 0
    mov bl,10
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto34;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto34;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto34;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto33;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto33;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto33;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto33;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto33;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto33;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h




	mov ah,02h  
	mov bh,0
	mov dh,filauto32;fila
	mov dl, ejexx320;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto32;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto32;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto32;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto32;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto32;fila
	mov dl, ejexx325;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto31;fila
	mov dl, ejexx321;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto31;fila
	mov dl, ejexx322;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto31;fila
	mov dl, ejexx323;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto31;fila
	mov dl, ejexx324;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,9
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
ret
spriteAuto3 endp


spriteAuto2 proc 
	mov ah,02h  
	mov bh,0
	mov dh,filauto8;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			ALERON COLOR SECUNDARIO
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,filauto8;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto8;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto8;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto8;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			ALERON COLOR SECUNDARIO FIN
;------------------------------------------------------




	mov ah,02h  
	mov bh,0
	mov dh,filauto8;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	





	mov ah,02h  
	mov bh,0
	mov dh,filauto7;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto7;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto7;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto7;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto7;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto7;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, aletrasx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto6;fila
	mov dl, ejexx19;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto6;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto6;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto6;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto6;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto6;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto6;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto6;fila
	mov dl, ejexx26;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto5;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			CASCO
;------------------------------------------------------

	mov ah,02h  
	mov bh,0
	mov dh,filauto5;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,5
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto5;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,5
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			CASCO FINAL
;------------------------------------------------------




	mov ah,02h  
	mov bh,0
	mov dh,filauto5;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto4;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,filauto4;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto4;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto4;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,filauto3;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto3;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto3;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto3;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,filauto3;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, suspx
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto3;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, ruedax
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h




	mov ah,02h  
	mov bh,0
	mov dh,filauto2;fila
	mov dl, ejexx20;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto2;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto2;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto2;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, cuadrox
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto2;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto2;fila
	mov dl, ejexx25;columna
	int 10h
	mov ah,9
    mov al, aledelx
    mov bh, 0
    mov bl,1
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto1;fila
	mov dl, ejexx21;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto1;fila
	mov dl, ejexx22;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto1;fila
	mov dl, ejexx23;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,filauto1;fila
	mov dl, ejexx24;columna
	int 10h
	mov ah,9
    mov al, lipx
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
ret

spriteAuto2 endp 


;auto2 proc 
	;mov ah,02h  
	;mov bh,0
	;mov dh, filauto ;fila
	;mov dl, 8  ;columna
	;int 10h
	;mov ah,9
	;mov dx, offset linea 
	;int 21h
;ret 
;auto2 endp

auto1 proc 
cmp vueltas,1 
jbe finfunc
cmp vueltas,22
jae finfunc
;cmp filauto,23
;jae finfunc
call spriteAuto2 
finfunc:
ret
auto1 endp

sumafilauto1 proc 
add filauto1,1 
add filauto2,1
add filauto3,1
add filauto4,1
add filauto5,1
add filauto6,1
add filauto7,1
add filauto8,1

ret 
sumafilauto1 endp




convueltas proc 
xor si,si 

mov si,0
borrado:
	cmp vueltasmos[si],24h
	je finborrado
	mov vueltasmos[si],30h 
	inc si
	jmp borrado 
finborrado:	
mov dl,vueltas 
mov bx, offset vueltasmos
call regtoascii

mov ah,9
mov dx,offset vueltasmos
int 21h




ret 
convueltas endp

;mov dl,cantcarac 
;mov bx, offset numero
;en dl la cantidad de caracteres y en bx el offset de la variable donde guardo el numero
regtoascii proc  
	;recibe en bx el offset de una variable de 3 bytes, y el numero a convertir por dl no mayor a 255

	        push ax
	        push dx

		add bx,2
		xor ax,ax
		mov al, dl
		mov dl, 10
		div dl
		add [bx],ah

		xor ah,ah
		dec bx
	        div dl
		add [bx],ah

		xor ah,ah
		dec bx
	        div dl
		add [bx],ah

	        pop dx
	        pop ax

	        ret
	regtoascii endp


;---------------------------------------------------------------------------
;FUNCIONES DEL MENU
;---------------------------------------------------------------------------

printcontrols proc  

	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,15
	int 10h
	mov ah,9
	mov dx,offset controless
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,17
	int 10h
	mov ah,9
	mov dx,offset derechaa
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,16
	int 10h
	mov ah,9
	mov dx,offset izquierdaa
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,19
	int 10h
	mov ah,9
	mov dx,offset comillass
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,20
	int 10h
	mov ah,9
	mov dx,offset ddd
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,21
	int 10h
	mov ah,9
	mov dx,offset comillass
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,13
	mov dl,19
	int 10h
	mov ah,9
	mov dx,offset comillass
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,13
	mov dl,20
	int 10h
	mov ah,9
	mov dx,offset aa
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,13
	mov dl,21
	int 10h
	mov ah,9
	mov dx,offset comillass
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,16
	mov dl,14
	int 10h
	mov ah,9
	mov dx,offset exitcontrols
	int 21h

showflech:
	mov ah,01h
	int 16h
	cmp al,0dh
	je fincontrols

	mov ah,02h  
	mov bh,0
	mov dh,16
	mov dl,13
	int 10h
	mov ah,9
	mov dx,offset flechita
	int 21h

	cmp al,0dh
	je fincontrols
	mov ah, 86h
	mov cx,000Ch
	mov dx,3500h
	int 15h

	cmp al,0dh
	je fincontrols
	mov ah,02h  
	mov bh,0
	mov dh,16
	mov dl,13
	int 10h
	mov ah,9
	mov dx,offset flechiborro
	int 21h

	cmp al,0dh
	je fincontrols
	mov ah, 86h
	mov cx,000Ch
	mov dx,3500h
	int 15h
	cmp al,0dh
	je fincontrols
jmp showflech

fincontrols:
	mov ax ,0C00h;
	int 21h
ret
printcontrols endp



titu1 proc 
 call titulos
 cmp flag,0
 jne noprimeravez 
 call pulst
 noprimeravez:
 call menuu
 call election 



ret 
titu1 endp

arribaa proc 

		cmp flechipos,15 
		je esquince
		cmp flechipos,17
		je esdieci 
		cmp flechipos,19
		je casiveinte 
	esquince:
		mov ah,02h  
		mov bh,0
		mov dh,flechipos
		mov dl,15
		int 10h
		mov ah,9
		mov dx,offset flechiborro
		int 21h
		mov flechipos,19
		mov ah,02h  
		mov bh,0
		mov dh,flechipos
		mov dl,15
		int 10h
		mov ah,9
		mov dx,offset flechita
		int 21h
		mov ah, 00h   ; GET KEYSTROKE
		int 16h
		cmp al, 119d ; Check if it is 'A'.
		jne finarriba 
		cmp al, 87d ; Check if it is 'A'.
		jne finarriba 
	esdieci:
		mov ah,02h  
		mov bh,0
		mov dh,flechipos
		mov dl,15
		int 10h
		mov ah,9
		mov dx,offset flechiborro
		int 21h
		mov flechipos,15
		mov ah,02h  
		mov bh,0
		mov dh,flechipos
		mov dl,15
		int 10h
		mov ah,9
		mov dx,offset flechita
		int 21h
		mov ah, 00h   ; GET KEYSTROKE
		int 16h
		cmp al, 119d ; Check if it is 'A'.
		jne finarriba 
		cmp al, 87d ; Check if it is 'A'.
		jne finarriba 
	casiveinte:
		mov ah,02h  
		mov bh,0
		mov dh,flechipos
		mov dl,15
		int 10h
		mov ah,9
		mov dx,offset flechiborro
		int 21h
		mov flechipos,17
		mov ah,02h  
		mov bh,0
		mov dh,flechipos
		mov dl,15
		int 10h
		mov ah,9
		mov dx,offset flechita
		int 21h
		mov ah, 00h   ; GET KEYSTROKE
		int 16h
		cmp al, 119d ; Check if it is 'A'.
		jne finarriba 
		cmp al, 87d ; Check if it is 'A'.
		jne finarriba 
finarriba:

ret 
arribaa endp

abajoo proc  

		cmp flechipos,15 
		je esquincee
		cmp flechipos,17
		je esdiecii 
		cmp flechipos,19
		je casiveintee 
	esquincee:
		mov ah,02h  
		mov bh,0
		mov dh,flechipos
		mov dl,15
		int 10h
		mov ah,9
		mov dx,offset flechiborro
		int 21h

		mov flechipos,17

		mov ah,02h  
		mov bh,0
		mov dh,flechipos
		mov dl,15
		int 10h
		mov ah,9
		mov dx,offset flechita
		int 21h

		mov ah, 00h   ; GET KEYSTROKE
		int 16h
		cmp al, 119d ; Check if it is 'A'.
		jne finabajo 
		cmp al, 87d ; Check if it is 'A'.
		jne finabajo 
	esdiecii:
		mov ah,02h  
		mov bh,0
		mov dh,flechipos
		mov dl,15
		int 10h
		mov ah,9
		mov dx,offset flechiborro
		int 21h

		mov flechipos,19

		mov ah,02h  
		mov bh,0
		mov dh,flechipos
		mov dl,15
		int 10h
		mov ah,9
		mov dx,offset flechita
		int 21h

		mov ah, 00h   ; GET KEYSTROKE
		int 16h
		cmp al, 119d ; Check if it is 'A'.
		jne finabajo 
		cmp al, 87d ; Check if it is 'A'.
		jne finabajo 
	casiveintee:
		mov ah,02h  
		mov bh,0
		mov dh,flechipos
		mov dl,15
		int 10h
		mov ah,9
		mov dx,offset flechiborro
		int 21h

		mov flechipos,15

		mov ah,02h  
		mov bh,0
		mov dh,flechipos
		mov dl,15
		int 10h
		mov ah,9
		mov dx,offset flechita
		int 21h

		mov ah, 00h   ; GET KEYSTROKE
		int 16h
		cmp al, 119d ; Check if it is 'A'.
		jne finabajo 
		cmp al, 87d ; Check if it is 'A'.
		jne finabajo 
finabajo:

ret
abajoo endp




election proc
;printeo flechita
	mov ah,02h  
	mov bh,0
	mov dh,flechipos
	mov dl,15
	int 10h
	mov ah,9
	mov dx,offset flechita
	int 21h
agin:
	mov ah,01h
	int 16h
	cmp al,0dh 
	je finprocess
	cmp al,119d ;w
	je arriba 
	cmp al,87d ;w
	je arriba 
	cmp al,115d ;s
	je abajo 
	cmp al,83d ;S
	je abajo
	mov ax ,0C00h;
	int 21h
	jmp agin
arriba:
		call arribaa
		jmp agin
abajo:
		call abajoo
		jmp agin


limpiado:
	mov ax ,0C00h;
	int 21h
	jmp agin

finprocess:

		mov ax ,0C00h;
		int 21h




ret
election endp





menuu proc

	mov ah,02h  
	mov bh,0
	mov dh,15
	mov dl,16
	int 10h
	mov ah,9
	mov dx,offset jugarr
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,17
	mov dl,16
	int 10h
	mov ah,9
	mov dx,offset controles
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,19
	mov dl,16
	int 10h
	mov ah,9
	mov dx,offset salirr
	int 21h

ret
menuu endp

pulst proc
	xor ax,ax
printeo:

	mov ah,01h
	int 16h

	cmp al,48d
	jae casicasi 
	jmp sigue
casicasi:
	cmp al,122d
	jbe finn

sigue:
	mov ah,02h  
	mov bh,0
	mov dh,15
	mov dl,8
	int 10h
	mov ah,9
	mov dx,offset insrt
	int 21h

	cmp al,48d
	jae casicasii 
	jmp siguee
casicasii:
	cmp al,122d
	jbe finn

siguee:

	mov ah, 86h
	mov cx,000Ch
	mov dx,3500h
	int 15h

	cmp al,48d
	jae casicasiii 
	jmp sigueee
casicasiii:
	cmp al,122d
	jbe finn

sigueee:


	mov ah,02h  
	mov bh,0
	mov dh,15
	mov dl,8
	int 10h
	mov ah,9
	mov dx,offset clin
	int 21h

	cmp al,48d
	jae casicassiii 
	jmp siigueee
casicassiii:
	cmp al,122d
	jbe finn

siigueee:



	mov ah, 86h
	mov cx,000Ch
	mov dx,3500h
	int 15h

	cmp al,48d
	jae almost 
	jmp next
almost:
	cmp al,122d
	jbe finn

next:

	jmp printeo



	
finn:
	mov ah,02h  
	mov bh,0
	mov dh,15
	mov dl,8
	int 10h
	mov ah,9
	mov dx,offset clin
	int 21h
mov flag,1
mov ax ,0C00h;
	int 21h

ret
pulst endp




vacioo proc
	mov ah,02h  
	mov bh,0
	mov dh,23
	mov dl,39
	int 10h
	mov ah,9
	mov dx,offset meepty
	int 21h

ret

vacioo endp

titulos proc 

	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,9
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,10
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,11
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,12
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,10
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,11
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,11
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,12
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,13
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,12
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,13
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,14
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,13
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,14
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,15
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,6
	mov dl,14
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,6
	mov dl,15
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,6
	mov dl,16
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,15
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,16
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,17
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,18
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,19
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,20
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,21
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,22
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,23
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,24
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,25
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,26
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,27
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,16
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,17
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,18
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,19
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,20
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,21
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,22
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,23
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,24
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,25
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,26
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,27
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,28
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,17
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,18
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,19
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,20
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,21
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,22
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,23
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,24
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,25
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,26
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,27
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,28
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,13
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,14
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,15
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,14
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,15
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,16
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,15
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,16
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,17
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,16
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,17
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,18
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,19
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,20
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,21
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,22
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,23
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,24
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,17
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,18
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,19
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,20
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,21
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,22
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,23
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,24
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,25
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

;el 1

	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,23
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,24
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,25
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,24
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,25
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,26
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,25
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,26
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,27
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,26
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,27
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,28
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,27
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,28
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,29
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,6
	mov dl,28
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,6
	mov dl,29
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,6
	mov dl,30
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,29
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,30
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,31
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,30
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,31
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,32
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,31
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,33
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,32
	int 10h
	mov ah,9
	mov dx,offset pixel
	int 21h

ret
titulos endp








;---------------------------------------------------------------------------
;FUNCIONES PARA EL JUEGO
;---------------------------------------------------------------------------



comparacion proc 
	cmp posf1, 22
	je igualfila 
	jmp siguiente
igualfila:
	cmp columniiita,13 
	jbe perdio 
	jmp siguiente
perdio:
	mov flagwin,1
	
siguiente:
	ret 
comparacion endp



proc perdiste 
	call cls
	call reiniciartodo
	mov ah,2
	mov bh,0
	mov dh, 12
	mov dl, 15
	int 10h

	mov ah,9
	mov dx,offset perdistetxt 
	int 21h 
	
	mov ah,9
	mov dx, offset reinicio
	int 21h

	mov ah,2
	mov bh,0
	mov dh, 15
	mov dl, 12
	int 10h
	mov ah,9 
	mov dx, offset juegardenuevo
	int 21h 
	mov ah,2
	mov bh,0
	mov dh, 16
	mov dl, 12
	int 10h
	mov ah,9
	mov dx,offset salirrr
	int 21h

	menupajugar:
	mov ah,8
	int 21h 
	cmp al,49d 
	je reiniciar
	cmp al,50d 
	je finjuego
	jmp menupajugar 

finjuego:	
	mov ax,4c00h
	int 21h
;pidetecla:
	;mov ah, 8
	;int 21h 

	;cmp al, 00d
	;jae reiniciar
	;jmp pidetecla
reiniciar:
	
	;mantener:
		;jmp mantengo
	ret 
perdiste endp 




proc movimiento
		push ax 
		push dx
		xor ax,ax

		mov ah,01h
		int 16h

		cmp al, 61h
		jz izquierda
		cmp al, 41h
		jz izquierda
		cmp al, 44h
		jz derecha
		cmp al, 64h
		jz derecha

		

		jmp finproc
		
		izquierda:
			cmp ejex19,0 
			jne mueveizq 
			jmp finproc
			mueveizq:
				sub ejex19,1
				sub ejex20,1
				sub ejex21,1
				sub ejex22,1
				sub ejex23,1
				sub ejex24,1
				sub ejex25,1
				sub ejex26,1

				mov ah, 00h   ; GET KEYSTROKE
				int 16h
				cmp al, 65d ; Check if it is 'k'.
				jne finproc
				cmp al, 97d ; Check if it is 'k'.
				jne finproc 

		derecha:
			cmp ejex26, 39
			jne mueveder
			jmp finproc
			mueveder:
				add ejex19,1
				add ejex20,1
				add ejex21,1
				add ejex22,1
				add ejex23,1
				add ejex24,1
				add ejex25,1
				add ejex26,1

				mov ah, 00h   ; GET KEYSTROKE
				int 16h
				cmp al, 68d   ; Check if it is 'k'.
				jne finproc
				cmp al, 100d   ; Check if it is 'k'.
				jne finproc
				
		finproc:
		
		mov ax ,0C00h;
		int 21h
		
		pop dx
		pop ax
		ret
movimiento endp

proc pixelcin
	mov ah,02h  
	mov bh,0
	mov dh,22 
	mov dl, columniiita
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
ret
pixelcin endp

obstaculo1 proc
	mov ah,02h  
	mov bh,0
	mov dh,posf1 
	mov dl,posc1
	int 10h
	mov ah,9
	mov dx, offset spriteObs 
	int 21h
	ret	
obstaculo1 endp 








linitas8 proc  
;la de la izq 
	
	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,19
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,16
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,17
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,18
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,1
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,1
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,2
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h


;la de la derecha 
	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,19
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,16
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,17
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,18
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,1
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,1
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,2
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

ret 
linitas8 endp 



linitas7 proc  
;la de la izq 
	
	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,18
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,15
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,16
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,17
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,2
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,23
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,23
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,1
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h


;la de la derecha 
	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,18
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,15
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,16
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,17
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,2
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,23
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,23
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,1
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

ret 
linitas7 endp 


linitas6 proc  
;la de la izq 
	
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,6
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,17
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,14
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,15
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,16
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,1
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,22
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,23
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,23
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h


;la de la derecha 
	mov ah,02h  
	mov bh,0
	mov dh,9
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,6
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,17
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,14
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,15
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,16
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,1
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,22
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,23
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,23
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

ret 
linitas6 endp 



linitas5 proc  
;la de la izq 
	
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,6 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,16 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,13
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,14
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,15
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,23
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,21
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,22
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,23
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h


;la de la derecha 
	mov ah,02h  
	mov bh,0
	mov dh,8
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,6
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,16
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,13
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,14
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,15 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,23
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,21
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,22
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,23
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

ret 
linitas5 endp 




linitas4 proc  
;la de la izq 
	
	mov ah,02h  
	mov bh,0
	mov dh,4
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,6 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,12 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,13
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,14 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,15 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,20 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,21
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,22 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,23 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h


;la de la derecha 
	mov ah,02h  
	mov bh,0
	mov dh,4 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,6
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,7 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,12 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,13
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,14 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,15 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,20 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,21 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,22 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,23 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

ret 
linitas4 endp 


linitas3 proc  
;la de la izq 
	
	mov ah,02h  
	mov bh,0
	mov dh,3
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,6 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,11 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,12
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,13 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,14 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,19 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,20
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,21 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,22 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h


;la de la derecha 
	mov ah,02h  
	mov bh,0
	mov dh,3 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,6 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,11 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,12
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,13 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,14 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,19 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,20 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,21 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,22 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

ret 
linitas3 endp 

linitas2 proc 
;la de la izq 
	
	mov ah,02h  
	mov bh,0
	mov dh,2
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,10 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,12 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,13 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,18 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,19 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,20 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,21 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h


;la de la derecha 
	mov ah,02h  
	mov bh,0
	mov dh,2 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,5 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,10 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,11
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,12 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,13 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,18 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,19 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,20 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,21 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

ret 
linitas2 endp 



linitas1 proc 
;la de la izq 
	
	mov ah,02h  
	mov bh,0
	mov dh,1
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,2 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,9 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,11 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,12 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,17 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,18 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,19 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,20 
	mov dl,13
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h


;la de la derecha 
	mov ah,02h  
	mov bh,0
	mov dh,1 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,2 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,3 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,4 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

;segunda linea
	mov ah,02h  
	mov bh,0
	mov dh,9 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,10
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,11 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,12 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
;linea 3
	mov ah,02h  
	mov bh,0
	mov dh,17 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,18 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,19 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h
	mov ah,02h  
	mov bh,0
	mov dh,20 
	mov dl,26
	int 10h
	mov ah,9
	mov dx, offset linea 
	int 21h

ret 
linitas1 endp



convDec proc  ;recibe en bx el offset de una variable de 3 bytes, y el numero a convertir por dl no mayor a 255
        push ax
        push dx

		add bx,2
		xor ax,ax
		mov al, dl
		mov dl, 10
		div dl
		add [bx],ah

		xor ah,ah
		dec bx
	        div dl
		add [bx],ah

		xor ah,ah
		dec bx
	        div dl
		add [bx],ah

	    pop dx
	    pop ax

	    ret
convDec endp

impDecimal proc
	mov dl, cantidad
	lea bx,numeroDec
	call convDec

	mov dx, offset numeroDec
	mov ah, 9
	int 21h
	ret
impDecimal endp



cls proc 
		push ax

		mov ah, 0fh	
		int 10h		
		mov ah, 0	
		int 10h
		mov ah,02h  
		
		pop ax
		ret
cls endp 

limpiaPantalla proc 
		push ax

		mov ah, 0fh	
		int 10h		
		mov ah, 0	
		int 10h
		mov ah,02h  


		mov bh,0
		mov dh,1
		mov dl,1
		int 10h
		mov ah,9
		mov dx, offset puntuacion
		int 21h
		call convueltas
		;call impDecimal

		

		pop ax
		ret
limpiaPantalla endp



spriteAuto proc
	mov ah,02h  
	mov bh,0
	mov dh,ejey23;fila
	mov dl, ejex20;columna
	int 10h
	mov ah,9
    mov al, aledel
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			ALERON COLOR SECUNDARIO
;------------------------------------------------------
	mov ah,02h  
	mov bh,0
	mov dh,ejey23;fila
	mov dl, ejex21;columna
	int 10h
	mov ah,9
    mov al, aledel
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey23;fila
	mov dl, ejex22;columna
	int 10h
	mov ah,9
    mov al, aledel
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey23;fila
	mov dl, ejex23;columna
	int 10h
	mov ah,9
    mov al, aledel
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey23;fila
	mov dl, ejex24;columna
	int 10h
	mov ah,9
    mov al, aledel
    mov bh, 0
    mov bl,15
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			ALERON COLOR SECUNDARIO FIN
;------------------------------------------------------




	mov ah,02h  
	mov bh,0
	mov dh,ejey23;fila
	mov dl, ejex25;columna
	int 10h
	mov ah,9
    mov al, aledel
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	





	mov ah,02h  
	mov bh,0
	mov dh,ejey22;fila
	mov dl, ejex20;columna
	int 10h
	mov ah,9
    mov al, aletras
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey22;fila
	mov dl, ejex21;columna
	int 10h
	mov ah,9
    mov al, aletras
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey22;fila
	mov dl, ejex22;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey22;fila
	mov dl, ejex23;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey22;fila
	mov dl, ejex24;columna
	int 10h
	mov ah,9
    mov al, aletras
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey22;fila
	mov dl, ejex25;columna
	int 10h
	mov ah,9
    mov al, aletras
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,ejey21;fila
	mov dl, ejex19;columna
	int 10h
	mov ah,9
    mov al, rueda
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey21;fila
	mov dl, ejex20;columna
	int 10h
	mov ah,9
    mov al, susp
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey21;fila
	mov dl, ejex21;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey21;fila
	mov dl, ejex22;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey21;fila
	mov dl, ejex23;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey21;fila
	mov dl, ejex24;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey21;fila
	mov dl, ejex25;columna
	int 10h
	mov ah,9
    mov al, susp
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey21;fila
	mov dl, ejex26;columna
	int 10h
	mov ah,9
    mov al, rueda
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,ejey20;fila
	mov dl, ejex21;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


;------------------------------------------------------
;			CASCO
;------------------------------------------------------

	mov ah,02h  
	mov bh,0
	mov dh,ejey20;fila
	mov dl, ejex22;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,ejey20;fila
	mov dl, ejex23;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,6
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
;------------------------------------------------------
;			CASCO FINAL
;------------------------------------------------------




	mov ah,02h  
	mov bh,0
	mov dh,ejey20;fila
	mov dl, ejex24;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey19;fila
	mov dl, ejex21;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h


	mov ah,02h  
	mov bh,0
	mov dh,ejey19;fila
	mov dl, ejex22;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey19;fila
	mov dl, ejex23;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey19;fila
	mov dl, ejex24;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h



	mov ah,02h  
	mov bh,0
	mov dh,ejey18;fila
	mov dl, ejex20;columna
	int 10h
	mov ah,9
    mov al, rueda
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey18;fila
	mov dl, ejex21;columna
	int 10h
	mov ah,9
    mov al, susp
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,ejey18;fila
	mov dl, ejex22;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey18;fila
	mov dl, ejex23;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
	
	mov ah,02h  
	mov bh,0
	mov dh,ejey18;fila
	mov dl, ejex24;columna
	int 10h
	mov ah,9
    mov al, susp
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey18;fila
	mov dl, ejex25;columna
	int 10h
	mov ah,9
    mov al, rueda
    mov bh, 0
    mov bl,8
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h




	mov ah,02h  
	mov bh,0
	mov dh,ejey17 ;fila
	mov dl, ejex20;columna
	int 10h
	mov ah,9
    mov al, aledel
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey17 ;fila
	mov dl, ejex21;columna
	int 10h
	mov ah,9
    mov al, aledel
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey17 ;fila
	mov dl, ejex22;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey17 ;fila
	mov dl, ejex23;columna
	int 10h
	mov ah,9
    mov al, cuadro
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey17 ;fila
	mov dl, ejex24;columna
	int 10h
	mov ah,9
    mov al, aledel
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey17 ;fila
	mov dl, ejex25;columna
	int 10h
	mov ah,9
    mov al, aledel
    mov bh, 0
    mov bl,4
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey16;fila
	mov dl, ejex21;columna
	int 10h
	mov ah,9
    mov al, lip
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey16;fila
	mov dl, ejex22;columna
	int 10h
	mov ah,9
    mov al, lip
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey16;fila
	mov dl, ejex23;columna
	int 10h
	mov ah,9
    mov al, lip
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h

	mov ah,02h  
	mov bh,0
	mov dh,ejey16;fila
	mov dl, ejex24;columna
	int 10h
	mov ah,9
    mov al, lip
    mov bh, 0
    mov bl,14
    mov cx,1 ;cant de veces que muestro el ascii
    int 10h
ret

spriteAuto endp 



;--------------------------------------------------
;			PRINTEO PANTALLA JUEGO FIN
;--------------------------------------------------


colorfondo1 proc
	mov ah,0bh 
	mov bh,00h  
	mov bl,0
	int 10h	

ret 
colorfondo1 endp


end main