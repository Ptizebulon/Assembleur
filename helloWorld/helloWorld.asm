	SECTION .data 			; section data
msg:	db "Hello World", 10		; chaine a afficher
len:	equ $-msg			; len=longueur de la chaine a afficher

	SECTION .text			; section code
	global main
main:
	mov eax, 4			; eax=4=code fonction write
	mov ebx, 1			; ebx=1=descripteur de flux
	mov ecx, msg			; ecx = adresse du buffer contenant la chaine a afficher
	mov edx, len			; edx=longueur du message 	
	int 80h				; interruption

	mov ebx, 0 			; ebx=0=code retour
	mov eax, 1			; eax=1=code fonction exit
	int 80h 			; interruption