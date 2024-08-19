;-----------------------------------------------------------------------
; Programa TSR que se instala en el vector de interrupciones 80h (en este caso, vos lo podes cambiar mas adelante donde quieras) <-
; Para que te ande la interrupcion, la tenes que correr como dice aca abajo antes de usar el programa
; Se debe generar el ejecutable .COM con los siguientes comandos:
;	tasm tsr2.asm
;	tlink /t tsr2.obj
;-----------------------------------------------------------------------
;                      todo esto no importa
.8086
.model tiny		; Definicion para generar un archivo .COM
                ;Tiene todos los segmentos apuntados al mismo lugar, del mismo tamanio
.code
   org 100h		; Definicion para generar un archivo .COM
                ;.COM = Archivo instalable del sistema
start:
   jmp main		; Comienza con un salto para dejar la parte residente primero

;-------------------------------------------------------------------------
;- Part que queda residente en memoria y contine las ISR
;- de las interrupcion capturadas
;-------------------------------------------------------------------------
;   aca vas a poner el codigo que quieras <-
;-------------------------------------------------------------------------



Funcion PROC FAR ;por que esta en otro lado, por eso FAR
   ; La funcion ISR que atendera la interrupcion capturada

        mov ah, 00h
        mov al, 0dh;puede ser 10h
        int 10h
        mov ah,01h 
        mov ch,0026h  
        mov cl,0007h
        int 10h  

    iret
endp

; Datos usados dentro de la ISR ya que no hay DS dentro de una ISR
DespIntXX dw 0
SegIntXX  dw 0

FinResidente LABEL BYTE		; Marca el fin de la porción a dejar residente
;------------------------------------------------------------------------
; Datos a ser usados por el Instalador
;------------------------------------------------------------------------
Cartel    DB "Programa Instalado exitosamente!!!",0dh, 0ah, '$' ;todo esto no te interesa <-

main:
; Se apunta todos los registros de segmentos al mismo lugar CS.
    mov ax,CS
    mov DS,ax
    mov ES,ax

InstalarInt:
    mov AX,3580h ;<- aca cambias el 80h por el numero que quieras para usar tu int, 80 84 88....sino dejalo en 80 que funciona tmb ; Obtiene la ISR (direccion) que esta instalada en la interrupcion
                        ; Servicio 35, interrupcion 80 (a visitar)
    int 21h    
    
    ;Para la desinstalacion
    mov DespIntXX,BX ;IP (desplazamiento desde donde esta ubicada)
    mov SegIntXX,ES  ;CS (segmento)

    mov AX,2580h ;<- aca tambien cambialo	; Coloca la nueva ISR en el vector de interrupciones
                    ; Servicio 25, interrupcion 80 (a cambiar) con el CS:IP guardados
    mov DX,Offset Funcion 
    int 21h 

MostrarCartel:
    mov dx, offset Cartel
    mov ah,9
    int 21h
;Permanencia del programa en memoria
DejarResidente:		;<- esto tampoco te importa
    Mov     AX,(15+offset FinResidente) ;1 parrafo: 16 bytes
    Shr     AX,1        ;shift right
    Shr     AX,1        ;Se obtiene la cantidad de paragraphs
    Shr     AX,1
    Shr     AX,1	;ocupado por el codigo
    Mov     DX,AX       ;guarda el valor shifteado en DX, por que el servicio 31 necesita en DX los parrafos a bloquear
    Mov     AX,3100h    ;y termina sin error 0, dejando el
    Int     21h         ;programa residente
end start