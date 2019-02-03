%include 'gfx.inc'
%include 'util.inc'

%define WIDTH  1024
%define HEIGHT 768

global main
;//////////////////////////////////////////SZINEK B-G-R BEÁLLÍTÁSA
szinek:

.RAN:
	push ebx
	mov ebx,[randi+4]
	mov	[eax], bl
	mov ebx,[randi+8]
	mov [eax+1],bl
	mov ebx,[randi+12]
	mov [eax+2],bl
	xor ebx,ebx
	mov [eax+3],bl
	;add	eax, 4
	pop ebx
	jmp .vege

;///////////////////////////////////////////KÉK
.kek:
	push ebx
	mov ebx,245
	mov	[eax], bl
	mov ebx,100
	mov [eax+1],bl
	mov ebx,100
	mov [eax+2],bl
	xor ebx,ebx
	mov [eax+3],bl
	;add	eax, 4
	pop ebx
	jmp .vege
;////////////////////////////////////////OUT GOMB SZINE
.out:
	push ebx
	mov ebx,60
	mov	[eax], bl
	mov ebx,154
	mov [eax+1],bl
	mov ebx,245
	mov [eax+2],bl
	xor ebx,ebx
	mov [eax+3],bl
	;add		eax, 4
	pop ebx
	jmp .vege
;/////////////////////////////////////PIROS
.piros:
	push ebx
	mov ebx,0
	mov	[eax], bl
	mov ebx,0
	mov [eax+1],bl
	mov ebx,255
	mov [eax+2],bl
	xor ebx,ebx
	mov [eax+3],bl
	;add		eax, 4
	pop ebx
	jmp .vege
;/////////////////////////////////ZOLD
.zold:
	push ebx
	mov ebx,30
	mov	[eax], bl
	mov ebx,210
	mov [eax+1],bl
	mov ebx,100
	mov [eax+2],bl
	xor ebx,ebx
	mov [eax+3],bl
	;add	eax, 4
	pop ebx
	jmp .vege
;////////////////////////////////////FEKETE
.fekete:
	push ebx
	mov ebx,0
	mov	[eax], bl
	mov ebx,0
	mov [eax+1],bl
	mov ebx,0
	mov [eax+2],bl
	xor ebx,ebx
	mov [eax+3],bl
	;add	eax, 4
	pop ebx
	jmp .vege
;/////////////////////////////////NARANCS SÁRGA
.narancs:
	push ebx
	mov ebx,15
	mov	[eax], bl
	mov ebx,170
	mov [eax+1],bl
	mov ebx,250
	mov [eax+2],bl
	xor ebx,ebx
	mov [eax+3],bl
	;add	eax, 4
	pop ebx
	jmp .vege
;/////////////////////////////FEHÉR KÉKES
.feher1:
	push ebx
	mov ebx,200
	mov	[eax], bl
	mov ebx,255
	mov [eax+1],bl
	mov ebx,255
	mov [eax+2],bl
	xor ebx,ebx
	mov [eax+3],bl
	;add	eax, 4
	pop ebx
	jmp .vege
;///////////////////////////FEHÉR PIROSAS
.feher2:
	push ebx
	mov ebx,255
	mov	[eax], bl
	mov ebx,255
	mov [eax+1],bl
	mov ebx,200
	mov [eax+2],bl
	xor ebx,ebx
	mov [eax+3],bl
	;add	eax, 4
	pop ebx
	jmp .vege
.vege:
ret


;////////////////////////////////////////////BETÛK KIARATÁSA PIXELENKÉNT
betuk:
	;/////////////////////////////////////////G
	.g:
	
		xor ecx,ecx
		.gk:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .gk
		add eax,3936
		xor ecx,ecx
		.gk1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .gk1
		
		xor ecx,ecx
		xor edx,edx
		.gSz:
		inc edx
		inc ecx
		add eax,3936
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,140
		cmp edx,20
		
		jl .kiugrik
			
			cmp edx,20
			jne .szara1
			
				sub eax,40
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				
			.szara1:
			
			cmp edx,21
			jne .szara2
			
				sub eax,40
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				call szinek.fekete
				add eax,4
				
			.szara2:
			
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			jmp .ciklusvege
		
		.kiugrik:
		add eax,12
		.ciklusvege:
		cmp ecx,40
		jl .gSz
		
		add eax,3936
		
		xor ecx,ecx
		.gk2:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .gk2
		add eax,3936
		xor ecx,ecx
		.gk3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .gk3
	
	jmp .vege
;///////////////////////////////////////////////////////////O
	.o:
		
		xor ecx,ecx
		.ok:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .ok
		add eax,3936
		xor ecx,ecx
		.ok1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .ok1
		
		xor ecx,ecx
		.oSz:
		inc ecx
		add eax,3936
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,140
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		cmp ecx,40
		jl .oSz
		
		add eax,3936
		
		xor ecx,ecx
		.ok2:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .ok2
		add eax,3936
		xor ecx,ecx
		.ok3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .ok3
		
	jmp .vege
;///////////////////////////////////////////////////////H	
	.h:
		xor ecx,ecx
		.szarH:
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,64
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,64
			inc ecx
	cmp ecx,42
	jl .szarH
	
	sub eax,94368
		
		xor ecx,ecx
		.hk:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,20
		jl .hk
		add eax,80
		add eax,3936
		xor ecx,ecx
		.hk2:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,20
		jl .hk2
	
	jmp .vege
;//////////////////////////////////////////////////////E	
	.e:
	
		xor ecx,ecx
		.ek:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .ek
		add eax,40
		add eax,3936
		xor ecx,ecx
		.ek1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .ek1
		add eax,40
		xor ecx,ecx
		.szarE:
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,144
			inc ecx
		cmp ecx,40
		jl .szarE	
		add eax,3936
		xor ecx,ecx
		.ek2:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .ek2
		add eax,40
		add eax,3936
		xor ecx,ecx
		.ek3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .ek3
		add eax,40
		sub eax,94368
		
		xor ecx,ecx
		.ek4:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,20
		jl .ek4
		add eax,80
		add eax,3936
		xor ecx,ecx
		.ek5:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,20
		jl .ek5
		
	jmp .vege
;///////////////////////////////////////////////////////////////L	
	.l:
		
		xor ecx,ecx
		.szarL:
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,144
			inc ecx
	cmp ecx,42
	jl .szarL
	
	add eax,3936
	
	xor ecx,ecx
		.Lk2:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .Lk2
		add eax,3936
		add eax,40
		xor ecx,ecx
		.Lk3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .Lk3
	
	jmp .vege
;//////////////////////////////////////////////////////////P	
	.p:
	
		xor ecx,ecx
		.pk:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .pk
		add eax,40
		add eax,3936
		xor ecx,ecx
		.pk1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .pk1
		add eax,40
	xor ecx,ecx
		.szarP:
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			cmp ecx,20
			jge .kiugrikP
			add eax,92
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			jmp .ciklusvegeP
			.kiugrikP:
				cmp ecx,20
				je .ide
				add eax,104
				jmp .ciklusvegeP
				.ide:
				sub eax,16
				xor edx,edx
					.pk2:
						inc edx
						call szinek.fekete
						add eax,4
					cmp edx,30
					jl .pk2
					add eax,40
					add eax,3936
					xor edx,edx
					.pk3:
						inc edx
						call szinek.fekete
						add eax,4
					cmp edx,30
					jl .pk3
					
			.ciklusvegeP:
			add eax,40
			inc ecx
	cmp ecx,42
	jl .szarP
	
	jmp .vege
;///////////////////////////////////////////////////////////// I	
	.i:
		
		xor ecx,ecx
		.szarI:
			add eax,3936
			add eax,72
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,72
			inc ecx
	cmp ecx,44
	jl .szarI
		
	jmp .vege
;///////////////////////////////////////////////////////////N	
	.n:
		
		xor ecx,ecx
		.nk:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .nk
		add eax,3936
		xor ecx,ecx
		.nk1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .nk1
		
		xor ecx,ecx
		.nSz:
		inc ecx
		add eax,3936
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,140
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		cmp ecx,42
		jl .nSz
		
	jmp .vege
;/////////////////////////////////////////////////////// T	
	.t:
		
		xor ecx,ecx
		.tk:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .tk
		add eax,3936
		xor ecx,ecx
		.tk1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .tk1
		
		xor ecx,ecx
		
		.szarT:
			add eax,3936
			add eax,72
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,72
			inc ecx
	cmp ecx,42
	jl .szarT
	jmp .vege
;/////////////////////////////////////////////////// U	
	.u: 
		
		xor ecx,ecx
		.uSz:
		inc ecx
		add eax,3936
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,140
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		cmp ecx,42
		jl .uSz
		
		add eax,3936
		
		xor ecx,ecx
		.uk2:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .uk2
		add eax,3936
		xor ecx,ecx
		.uk3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .uk3
		
	jmp .vege
;//////////////////////////////////////////////////////// Y	
	.y:
		xor ecx,ecx
		.ySz:
		inc ecx
		add eax,3936
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,140
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		cmp ecx,22
		jl .ySz
		
		add eax,3936
		
		xor ecx,ecx
		.yk2:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .yk2
		add eax,3936
		xor ecx,ecx
		.yk3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .yk3
		
		xor ecx,ecx
		.szarY:
			add eax,3936
			add eax,72
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,72
			inc ecx
	cmp ecx,20
	jl .szarY
	
	jmp .vege
;/////////////////////////////////////////////////// S	
	.s:
		xor ecx,ecx
		.sk:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .sk
		add eax,40
		add eax,3936
		xor ecx,ecx
		.sk1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .sk1
		add eax,40
		xor ecx,ecx
		.szarS:
			add eax,3936
			cmp ecx,20
			jge .masik
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,144
			jmp .ciklusvegeS
			 .masik: 
			add eax,104
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,40
			.ciklusvegeS:
			inc ecx
		cmp ecx,40
		jl .szarS	
		add eax,3936
		xor ecx,ecx
		.sk2:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .sk2
		add eax,40
		add eax,3936
		xor ecx,ecx
		.sk3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .sk3
		add eax,40
		sub eax,94368
		
		xor ecx,ecx
		.sk4:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .sk4
		add eax,40
		add eax,3936
		xor ecx,ecx
		.sk5:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .sk5
	jmp .vege
;//////////////////////////////////////////// A	
	.a:
	
		xor ecx,ecx
		.ak:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .ak
		add eax,40
		add eax,3936
		xor ecx,ecx
		.ak1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .ak1
		add eax,40
		xor ecx,ecx
		.szarA:
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,88
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,40
			inc ecx
		cmp ecx,42
		jl .szarA
		sub eax,94368
		
		xor ecx,ecx
		.ak4:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .ak4
		add eax,40
		add eax,3936
		xor ecx,ecx
		.ak5:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .ak5	
	
	jmp .vege
;//////////////////////////////////////////////// B	
	.b:
			
		xor ecx,ecx
		.bk:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .bk
		add eax,40
		add eax,3936
		xor ecx,ecx
		.bk1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .bk1
		add eax,40
		xor ecx,ecx
		.szarB:
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,88
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,40
			inc ecx
		cmp ecx,40
		jl .szarB	
		add eax,3936
		xor ecx,ecx
		.bk2:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .bk2
		add eax,40
		add eax,3936
		xor ecx,ecx
		.bk3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .bk3
		add eax,40
		sub eax,94368
		
		xor ecx,ecx
		.bk4:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .bk4
		add eax,40
		add eax,3936
		xor ecx,ecx
		.bk5:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .bk5	
			
	jmp .vege
;/////////////////////////////////////////////////////// C	
	.c:
			
		xor ecx,ecx
		.ck:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .ck
		add eax,40
		add eax,3936
		xor ecx,ecx
		.ck1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .ck1
		add eax,40
		xor ecx,ecx
		.cSz:
		inc ecx
		add eax,3936
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,152
		cmp ecx,40
		jl .cSz
		
		add eax,3936
		
		xor ecx,ecx
		.ck2:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .ck2
		add eax,3936
		add eax,40
		xor ecx,ecx
		.ck3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .ck3
		
			
	jmp .vege
;///////////////////////////////////////////////////////// D	
	.d:
	
		xor ecx,ecx
		.szarD1:
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,144
			inc ecx
	cmp ecx,44
	jl .szarD1
	
	add eax,88
	sub eax,131072
	
	xor ecx,ecx
		.szarD2:
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,144
			inc ecx
	cmp ecx,20
	jl .szarD2
	
	sub eax,8
	
	xor ecx,ecx
	.atlos1:
			
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,128
			inc ecx
			
	cmp ecx,11
	jl .atlos1
	
	
	
	sub eax,180224
	add eax,4096
	add eax,8
	xor ecx,ecx
	.atlos2:
			
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,152
			inc ecx
			
	cmp ecx,12
	jl .atlos2
	
	jmp .vege
;////////////////////////////////////////////////////////// M	
	.m:
		
		xor ecx,ecx
		.mk:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .mk
		add eax,3936
		xor ecx,ecx
		.mk1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .mk1
		
		xor ecx,ecx
		.mSz:
		inc ecx
		add eax,3936
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,140
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		cmp ecx,42
		jl .mSz
		
		sub eax,172029
		
		xor ecx,ecx
		.szarM:
			add eax,3936
			add eax,72
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,72
			inc ecx
	cmp ecx,20
	jl .szarM
		
	jmp .vege
;///////////////////////////////////////////////////////// PONTKIIRATÁS	
	.pont:
		
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,4076
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,4076
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,4076
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,4076
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,4076
		
	jmp .vege
	
;///////////////////////////////////////////////////////// W
	
	.w:
		xor ecx,ecx
		.wSz:
		inc ecx
		add eax,3936
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,140
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		cmp ecx,42
		jl .wSz
		
		add eax,3936
		
		xor ecx,ecx
		.wk2:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .wk2
		add eax,3936
		xor ecx,ecx
		.wk3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .wk3
		
		xor ecx,ecx
		sub eax,81920
		
		.szarW:
			add eax,3936
			add eax,72
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,72
			inc ecx
	cmp ecx,20
	jl .szarW
	jmp .vege
;//////////////////////////////////////////////////////////// R	
.r:

	xor ecx,ecx
		.rk:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .rk
		add eax,40
		add eax,3936
		xor ecx,ecx
		.rk1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .rk1
		add eax,40
	xor ecx,ecx
		.szarR:
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			cmp ecx,20
			jge .kiugrikR
			add eax,92
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			jmp .ciklusvegeR
			.kiugrikR:
				cmp ecx,20
				je .ideR
				add eax,104
				jmp .ciklusvegeR
				.ideR:
				sub eax,16
				xor edx,edx
					.rk2:
						inc edx
						call szinek.fekete
						add eax,4
					cmp edx,30
					jl .rk2
					add eax,40
					add eax,3936
					xor edx,edx
					.rk3:
						inc edx
						call szinek.fekete
						add eax,4
					cmp edx,30
					jl .rk3
					
			.ciklusvegeR:
			add eax,40
			inc ecx
	cmp ecx,42
	jl .szarR
	
	add eax,20
	sub eax,90112
	xor ecx,ecx
	.atlosR:
			
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,148
			inc ecx
			
	cmp ecx,22
	jl .atlosR
		
jmp .vege


.vege:
ret
;///////////////////////////////////////////// SZÁMOK KIIRATÁSA PIXELENKÉNT
szamok:
;////////////////////////////////////////////// 1
	.egy:
		
		xor ecx,ecx
		.szarEGY:
			add eax,3936
			add eax,72
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,72
			inc ecx
	cmp ecx,44
	jl .szarEGY
		
	jmp	.vege
;////////////////////////////////////////////// 2
	.ketto:
	
		xor ecx,ecx
		.kettok:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .kettok
		add eax,40
		add eax,3936
		xor ecx,ecx
		.kettok1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .kettok1
		add eax,40
		xor ecx,ecx
		.szarKETTO:
			add eax,3936
			cmp ecx,20
			jl .masikKETTO
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,144
			jmp .ciklusvegeKETTO
			 .masikKETTO: 
			add eax,104
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,40
			.ciklusvegeKETTO:
			inc ecx
		cmp ecx,40
		jl .szarKETTO
		add eax,3936
		xor ecx,ecx
		.kettok2:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .kettok2
		add eax,40
		add eax,3936
		xor ecx,ecx
		.kettok3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .kettok3
		add eax,40
		sub eax,94368
		
		xor ecx,ecx
		.kettok4:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .kettok4
		add eax,40
		add eax,3936
		xor ecx,ecx
		.kettok5:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .kettok5
		
	jmp .vege
;//////////////////////////////////////////// 3	
	.harom:
	
		xor ecx,ecx
		.haromk:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .haromk
		add eax,40
		add eax,3936
		xor ecx,ecx
		.haromk1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .haromk1
		add eax,40
		xor ecx,ecx
		.szarHAROM:
			add eax,3936
			add eax,104
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,40
			inc ecx
		cmp ecx,40
		jl .szarHAROM
		add eax,3936
		xor ecx,ecx
		.haromk2:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .haromk2
		add eax,40
		add eax,3936
		xor ecx,ecx
		.haromk3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .haromk3
		add eax,40
		sub eax,94368
		
		xor ecx,ecx
		add eax,40
		.haromk4:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,20
		jl .haromk4
		add eax,3936
		add eax,80
		xor ecx,ecx
		.haromk5:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,20
		jl .haromk5
	
	jmp .vege
;///////////////////////////////////////////////////////// 4	
	.negy:
	
		xor ecx,ecx
		.negySz:
		inc ecx
		add eax,3936
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,140
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		cmp ecx,22
		jl .negySz
		
		add eax,3936
		
		xor ecx,ecx
		.negyk2:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .negyk2
		add eax,3936
		xor ecx,ecx
		.negyk3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,40
		jl .negyk3
		
		xor ecx,ecx
		.szarNEGY:
			add eax,3936
			add eax,144
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			inc ecx
	cmp ecx,20
	jl .szarNEGY
	
	jmp .vege
;/////////////////////////////////////////////// 5	
	.ot:
	
		xor ecx,ecx
		.otk:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .otk
		add eax,40
		add eax,3936
		xor ecx,ecx
		.otk1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .otk1
		add eax,40
		xor ecx,ecx
		.szarOT:
			add eax,3936
			cmp ecx,20
			jge .masikOT
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,144
			jmp .ciklusvegeOT
			 .masikOT: 
			add eax,104
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,40
			.ciklusvegeOT:
			inc ecx
		cmp ecx,40
		jl .szarOT	
		add eax,3936
		xor ecx,ecx
		.otk2:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .otk2
		add eax,40
		add eax,3936
		xor ecx,ecx
		.otk3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .otk3
		add eax,40
		sub eax,94368
		
		xor ecx,ecx
		.otk4:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .otk4
		add eax,40
		add eax,3936
		xor ecx,ecx
		.otk5:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .otk5
	
	jmp .vege
;////////////////////////////////////////////////// 6	
	.hat:
	
		xor ecx,ecx
		.hatk:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .hatk
		add eax,40
		add eax,3936
		xor ecx,ecx
		.hatk1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .hatk1
		add eax,40
		xor ecx,ecx
		.szarHAT:
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,144
			inc ecx
		cmp ecx,40
		jl .szarHAT	
		add eax,3936
		xor ecx,ecx
		.hatk2:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .hatk2
		add eax,40
		add eax,3936
		xor ecx,ecx
		.hatk3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .hatk3
		add eax,40
		sub eax,94368
		
		xor ecx,ecx
		.hatk4:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .hatk4
		add eax,40
		add eax,3936
		xor ecx,ecx
		.hatk5:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .hatk5
	add eax,40
	add eax,104
		
		xor ecx,ecx
		.szarHAT1:
			add eax,3936
			
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,40
			add eax,104
			inc ecx
		cmp ecx,20
		jl .szarHAT1	
	
	jmp .vege
;////////////////////////////////////////////////////////// 7	
	.het:
		
		xor ecx,ecx
		add eax,40
		.hetk:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .hetk
		add eax,3936
		add eax,40
		xor ecx,ecx
		.hetk1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .hetk1
		
		xor ecx,ecx
		
		.szarHET:
			add eax,3936
			add eax,144
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			inc ecx
	cmp ecx,42
	jl .szarHET
	
	jmp .vege
;////////////////////////////////////////////////////// 8	
	.nyolc:
	
		xor ecx,ecx
		.nyolck:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .nyolck
		add eax,40
		add eax,3936
		xor ecx,ecx
		.nyolck1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .nyolck1
		add eax,40
		xor ecx,ecx
		.szarNYOLC:
			add eax,3936
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,88
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,40
			inc ecx
		cmp ecx,40
		jl .szarNYOLC	
		add eax,3936
		xor ecx,ecx
		.nyolck2:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .nyolck2
		add eax,40
		add eax,3936
		xor ecx,ecx
		.nyolck3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .nyolck3
		add eax,40
		sub eax,94368
		
		xor ecx,ecx
		.nyolck4:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .nyolck4
		add eax,40
		add eax,3936
		xor ecx,ecx
		.nyolck5:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .nyolck5		
	
	jmp .vege
;////////////////////////////////////////////// 9	
	.kilenc:
	
		xor ecx,ecx
		.kilenck:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .kilenck
		add eax,40
		add eax,3936
		xor ecx,ecx
		.kilenck1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .kilenck1
		add eax,40
		xor ecx,ecx
		.szarKILENC:
			add eax,3936
			add eax,104
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,40
			inc ecx
		cmp ecx,40
		jl .szarKILENC	
		add eax,3936
		xor ecx,ecx
		.kilenck2:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .kilenck2
		add eax,40
		add eax,3936
		xor ecx,ecx
		.kilenck3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .kilenck3
		add eax,40
		sub eax,94368
		
		xor ecx,ecx
		.kilenck4:
		inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .kilenck4
		add eax,40
		add eax,3936
		xor ecx,ecx
		.kilenck5:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .kilenck5
	add eax,200
	add eax,4096
	sub eax,94368
		
		xor ecx,ecx
		.szarKILENC1:
			add eax,3936
			
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			call szinek.fekete
			add eax,4
			add eax,40
			add eax,104
			inc ecx
		cmp ecx,20
		jl .szarKILENC1	
	
	jmp .vege
;//////////////////////////////////////////////// 0	
	.nulla:
	
		xor ecx,ecx
		.nullak:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .nullak
		add eax,3936
		add eax,40
		xor ecx,ecx
		.nullak1:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .nullak1
		add eax,40
		xor ecx,ecx
		.nullaSz:
		inc ecx
		add eax,3936
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,100
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		call szinek.fekete
		add eax,4
		add eax,40
		cmp ecx,40
		jl .nullaSz
		
		add eax,3936
		
		xor ecx,ecx
		.nullak2:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .nullak2
		add eax,40
		add eax,3936
		xor ecx,ecx
		.nullak3:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,30
		jl .nullak3
		
	
	jmp .vege

.vege:
ret
;///////////////////////////// A PÁLYA KIRAJZOLÁSA? A KERETEKKEL ILLETVE A MENÜ GOMBLYAIVAL
palya:
	
	push ebx
	push ecx
	push edx
	xor edi,edi
	xor edx,edx
	xor ecx,ecx	
	.fent:				
	
		call szinek.feher2			;felsõ keret
		add eax,4
		inc ecx
		
	cmp ecx, 10240
	jge .oldalt
	jmp .fent
	
	
	.oldalt:
		xor ecx,ecx
			.oldaltKi:			;baloldali keret

				xor edx,edx
					.sorba1:
						
						call szinek.feher2
						add eax,4
						inc edx
						
					cmp edx,10
					jge .kiSorba1
					jmp .sorba1
					
					.kiSorba1:
							xor edx,edx
							add eax,2992
							.sorba2:
							
							call szinek.feher2	;kozépsõ elválasztó a pálya és menü között
							add eax,4
							inc edx
							
						cmp edx,10
						jge .kiSorba2
						jmp .sorba2
						
					.kiSorba2:
							
							xor edx,edx
							cmp edi,187
							jge .valtovonal
							cmp ecx,747
							jge .valtovonal
							
							.menu:
								
								call szinek.zold	;menü szine
								add eax,4
								inc edx
								
							cmp edx,246
							jge .keret
							jmp .menu
							
							.valtovonal:
								xor edi,edi
							.vonal:
								
								call szinek.fekete		;a menü gombjai közti elválasztó vonal
								add eax,4
								inc edx
								
							cmp edx,246
							jge .keret
							jmp .vonal
							
					.keret:
						xor edx,edx
						.keretKi:
							
							call szinek.feher2	;keret baloldala
							add eax,4
							inc edx
								
						cmp edx,10
						jge .vegeKi	
						jmp .keretKi
						
					.vegeKi:
					
				inc ecx
				inc edi
		cmp ecx,748
		jge .lent
		jmp .oldaltKi
	
	.lent:
		xor ecx,ecx
		.lentKi:
			call szinek.feher1	;keret alja
			add eax,4
			inc ecx
		cmp ecx,10240
		jge .VEGE
		jmp .lentKi
	
	.VEGE:
	pop edx
	pop ecx
	pop ebx
ret
;//////////////////////////////////////////////EGY RANDOM ÉRTÉKET AD VISSZA A RANDI VÁLTOZÓBA AMI A LEESÕ CUCC BAL FELSÕ SARKA LESZ
randomolo:
	push eax
	push edx
	push ecx
	push esi
	push edi
	push ebx
	mov ecx,1000000	;ennyivel kell elosszuk a pszedorandom számot hogy 0 és 1000 közti értéket kapjunk
	xor eax,eax
	.randomol:
		call rand
		cdq
		idiv ecx
		cmp eax,0
		jge .nem
		imul eax,-1
		
		.nem:				;a leesõ cucc bal felsõ sarka
		cmp eax,10
		jl .randomol
		cmp eax,740		;addig randomolunk új értéket amíg az pályán lesz
		jle .vegee
	jmp .randomol
	.vegee:
	imul eax,4
	mov [randi],eax	;behelyezzük a memóriába
	pop ebx
	pop edi
	pop esi
	pop ecx
	pop edx
	pop eax
ret
;//////////////////////////////////////////////////// EGY FEKETE PÁLYA KIIRÁSA, HOGY A JÁTÉK FEKETE ALAPON KEZDÕDJÖN, A MENÜTÕL FÜGGETLENÜL
feketePalya:
	call gfx_map
				
	add eax,40960
	add eax,40
				
	xor ecx,ecx
	xor edx,edx
	.feketeK:
		xor ecx,ecx
		.feketeB:
			inc ecx
			call szinek.fekete
			add eax,4
		cmp ecx,748
		jl .feketeB
		inc edx
		add eax,1104
	cmp edx,748
	jl .feketeK
call gfx_unmap
call gfx_draw

ret
;////////////////////////////////////////////// KIIRJA A PONTOKAT, MEGJELENÍTI AZOKAT A MEGADOTT POZICIÓBAN
pontkiiro:

	push ebx
	push edx
	
	push eax
	push ecx
	mov ecx,10
	mov ebx,[spo]
	mov eax,ebx
	cdq 					;AZ ADOTT PONT A SPO-BAN VAN TÁROLVA, ENNEK ELSÕ SZÁMJEGYÉT TÍZZEL OSZTVA MEGKAPJUK EBX-BEN AZ ELSÕ SZÁMJEGYET, EDX-BEN A MÁSODIKAT 
	idiv ecx
	mov ebx,eax
	pop ecx
	pop eax
	.tizesek:
		
		cmp ebx,0	;ANNAK FÜGGVÉNYÉBEN HOGY HÁNYAS A SZÁM AKKOR ODA UGRUNK ÉS EGY EGHATÁROZOTT POZICIÓBA KIIRATUNK EGY OLYAN SZÁMJEGYET
		je .nullaT
		
		cmp ebx,1
		je .egyT
		
		cmp ebx,2
		je .kettoT
		
		cmp ebx,3
		je .haromT
		
		cmp ebx,4
		je .negyT
		
		cmp ebx,5
		je .otT
		
		cmp ebx,6
		je .hatT
		
		cmp ebx,7
		je .hetT
		
		cmp ebx,8
		je .nyolcT
		
		cmp ebx,9
		je .kilencT
		
		.nullaT:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3400
		call szamok.nulla
		call gfx_unmap
		jmp .egyesek
		
		.egyT:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3592
		call szamok.egy
		call gfx_unmap
		jmp .egyesek
		
		.kettoT:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3400
		call szamok.ketto
		call gfx_unmap
		jmp .egyesek
		
		.haromT:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3400
		call szamok.harom
		call gfx_unmap
		jmp .egyesek
		
		.negyT:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3524
		call szamok.negy
		call gfx_unmap
		jmp .egyesek
		
		.otT:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3400
		call szamok.ot
		call gfx_unmap
		jmp .egyesek
		
		.hatT:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3400
		call szamok.hat
		call gfx_unmap
		jmp .egyesek
		
		.hetT:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3350
		call szamok.het
		call gfx_unmap
		jmp .egyesek
		
		.nyolcT:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3400
		call szamok.nyolc
		call gfx_unmap
		jmp .egyesek
		
		.kilencT:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3400
		call szamok.kilenc
		call gfx_unmap
		jmp .egyesek
	
	.egyesek:
			
		cmp edx,0
		je .nullaE
		
		cmp edx,1
		je .egyE
		
		cmp edx,2
		je .kettoE
		
		cmp edx,3
		je .haromE
		
		cmp edx,4
		je .negyE
		
		cmp edx,5
		je .otE
		
		cmp edx,6
		je .hatE
		
		cmp edx,7
		je .hetE
		
		cmp edx,8
		je .nyolcE
		
		cmp edx,9
		je .kilencE	
		
		.nullaE:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3600
		call szamok.nulla
		call gfx_unmap
		jmp .vege
		
		.egyE:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3792
		call szamok.egy
		call gfx_unmap
		jmp .vege
		
		.kettoE:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3600
		call szamok.ketto
		call gfx_unmap
		jmp .vege
		
		.haromE:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3600
		call szamok.harom
		call gfx_unmap
		jmp .vege
		
		.negyE:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3724
		call szamok.negy
		call gfx_unmap
		jmp .vege
		
		.otE:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3600
		call szamok.ot
		call gfx_unmap
		jmp .vege
		
		.hatE:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3600
		call szamok.hat
		call gfx_unmap
		jmp .vege
		
		.hetE:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3550
		call szamok.het
		call gfx_unmap
		jmp .vege
		
		.nyolcE:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3600
		call szamok.nyolc
		call gfx_unmap
		jmp .vege
		
		.kilencE:
		call gfx_map
		add eax,409600
		add eax,2170880
		add eax,3600
		call szamok.kilenc
		call gfx_unmap
		jmp .vege

.vege:
pop edx
pop ebx
ret
;////////////////////////////////// A TOP 1 SCORE MEGFELELÕ HELYRE VALÓ KIIRATÁSA, AZ ELÕZÕHÖZ HASONLÓAN
top1:

	push ebx
	push edx
	
	push eax
	push ecx
	mov ecx,10
	mov ebx,[scores]
	mov eax,ebx
	cdq 
	idiv ecx
	mov ebx,eax
	pop ecx
	pop eax
	.tizesek:
		
		cmp ebx,0
		je .nullaT
		
		cmp ebx,1
		je .egyT
		
		cmp ebx,2
		je .kettoT
		
		cmp ebx,3
		je .haromT
		
		cmp ebx,4
		je .negyT
		
		cmp ebx,5
		je .otT
		
		cmp ebx,6
		je .hatT
		
		cmp ebx,7
		je .hetT
		
		cmp ebx,8
		je .nyolcT
		
		cmp ebx,9
		je .kilencT
		
		.nullaT:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,800
		call szamok.nulla
		call gfx_unmap
		jmp .egyesek
		
		.egyT:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,992
		call szamok.egy
		call gfx_unmap
		jmp .egyesek
		
		.kettoT:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,800
		call szamok.ketto
		call gfx_unmap
		jmp .egyesek
		
		.haromT:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,800
		call szamok.harom
		call gfx_unmap
		jmp .egyesek
		
		.negyT:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,924
		call szamok.negy
		call gfx_unmap
		jmp .egyesek
		
		.otT:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,800
		call szamok.ot
		call gfx_unmap
		jmp .egyesek
		
		.hatT:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,800
		call szamok.hat
		call gfx_unmap
		jmp .egyesek
		
		.hetT:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,750
		call szamok.het
		call gfx_unmap
		jmp .egyesek
		
		.nyolcT:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,800
		call szamok.nyolc
		call gfx_unmap
		jmp .egyesek
		
		.kilencT:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,800
		call szamok.kilenc
		call gfx_unmap
		jmp .egyesek
	
	.egyesek:
			
		cmp edx,0
		je .nullaE
		
		cmp edx,1
		je .egyE
		
		cmp edx,2
		je .kettoE
		
		cmp edx,3
		je .haromE
		
		cmp edx,4
		je .negyE
		
		cmp edx,5
		je .otE
		
		cmp edx,6
		je .hatE
		
		cmp edx,7
		je .hetE
		
		cmp edx,8
		je .nyolcE
		
		cmp edx,9
		je .kilencE	
		
		.nullaE:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,1000
		call szamok.nulla
		call gfx_unmap
		jmp .vege
		
		.egyE:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,1192
		call szamok.egy
		call gfx_unmap
		jmp .vege
		
		.kettoE:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,1000
		call szamok.ketto
		call gfx_unmap
		jmp .vege
		
		.haromE:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,1000
		call szamok.harom
		call gfx_unmap
		jmp .vege
		
		.negyE:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,1172
		call szamok.negy
		call gfx_unmap
		jmp .vege
		
		.otE:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,1000
		call szamok.ot
		call gfx_unmap
		jmp .vege
		
		.hatE:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,1000
		call szamok.hat
		call gfx_unmap
		jmp .vege
		
		.hetE:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,950
		call szamok.het
		call gfx_unmap
		jmp .vege
		
		.nyolcE:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,1000
		call szamok.nyolc
		call gfx_unmap
		jmp .vege
		
		.kilencE:
		call gfx_map
		add eax,409600
		add eax,409600
		add eax,1000
		call szamok.kilenc
		call gfx_unmap
		jmp .vege

.vege:
pop edx
pop ebx
ret
;//////////////////////////////////// MASODIK TOP SCORE UGYANÚGY
top2:

	push ebx
	push edx
	push edi
	
	mov edi,819200
	
	push eax
	push ecx
	mov ecx,10
	mov ebx,[scores+4]
	mov eax,ebx
	cdq 
	idiv ecx
	mov ebx,eax
	pop ecx
	pop eax
	.tizesek:
		
		cmp ebx,0
		je .nullaT
		
		cmp ebx,1
		je .egyT
		
		cmp ebx,2
		je .kettoT
		
		cmp ebx,3
		je .haromT
		
		cmp ebx,4
		je .negyT
		
		cmp ebx,5
		je .otT
		
		cmp ebx,6
		je .hatT
		
		cmp ebx,7
		je .hetT
		
		cmp ebx,8
		je .nyolcT
		
		cmp ebx,9
		je .kilencT
		
		.nullaT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.nulla
		call gfx_unmap
		jmp .egyesek
		
		.egyT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,992
		call szamok.egy
		call gfx_unmap
		jmp .egyesek
		
		.kettoT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.ketto
		call gfx_unmap
		jmp .egyesek
		
		.haromT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.harom
		call gfx_unmap
		jmp .egyesek
		
		.negyT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,924
		call szamok.negy
		call gfx_unmap
		jmp .egyesek
		
		.otT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.ot
		call gfx_unmap
		jmp .egyesek
		
		.hatT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.hat
		call gfx_unmap
		jmp .egyesek
		
		.hetT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,750
		call szamok.het
		call gfx_unmap
		jmp .egyesek
		
		.nyolcT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.nyolc
		call gfx_unmap
		jmp .egyesek
		
		.kilencT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.kilenc
		call gfx_unmap
		jmp .egyesek
	
	.egyesek:
			
		cmp edx,0
		je .nullaE
		
		cmp edx,1
		je .egyE
		
		cmp edx,2
		je .kettoE
		
		cmp edx,3
		je .haromE
		
		cmp edx,4
		je .negyE
		
		cmp edx,5
		je .otE
		
		cmp edx,6
		je .hatE
		
		cmp edx,7
		je .hetE
		
		cmp edx,8
		je .nyolcE
		
		cmp edx,9
		je .kilencE	
		
		.nullaE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.nulla
		call gfx_unmap
		jmp .vege
		
		.egyE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1192
		call szamok.egy
		call gfx_unmap
		jmp .vege
		
		.kettoE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.ketto
		call gfx_unmap
		jmp .vege
		
		.haromE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.harom
		call gfx_unmap
		jmp .vege
		
		.negyE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1172
		call szamok.negy
		call gfx_unmap
		jmp .vege
		
		.otE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.ot
		call gfx_unmap
		jmp .vege
		
		.hatE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.hat
		call gfx_unmap
		jmp .vege
		
		.hetE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,950
		call szamok.het
		call gfx_unmap
		jmp .vege
		
		.nyolcE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.nyolc
		call gfx_unmap
		jmp .vege
		
		.kilencE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.kilenc
		call gfx_unmap
		jmp .vege

.vege:
pop edi
pop edx
pop ebx
ret
;/////////////////////////////////// HARMADIK TOP SCORE UGYANÚGY
top3:

push ebx
	push edx
	push edi
	
	mov edi,1228800
	
	push eax
	push ecx
	mov ecx,10
	mov ebx,[scores+8]
	mov eax,ebx
	cdq 
	idiv ecx
	mov ebx,eax
	pop ecx
	pop eax
	.tizesek:
		
		cmp ebx,0
		je .nullaT
		
		cmp ebx,1
		je .egyT
		
		cmp ebx,2
		je .kettoT
		
		cmp ebx,3
		je .haromT
		
		cmp ebx,4
		je .negyT
		
		cmp ebx,5
		je .otT
		
		cmp ebx,6
		je .hatT
		
		cmp ebx,7
		je .hetT
		
		cmp ebx,8
		je .nyolcT
		
		cmp ebx,9
		je .kilencT
		
		.nullaT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.nulla
		call gfx_unmap
		jmp .egyesek
		
		.egyT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,992
		call szamok.egy
		call gfx_unmap
		jmp .egyesek
		
		.kettoT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.ketto
		call gfx_unmap
		jmp .egyesek
		
		.haromT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.harom
		call gfx_unmap
		jmp .egyesek
		
		.negyT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,924
		call szamok.negy
		call gfx_unmap
		jmp .egyesek
		
		.otT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.ot
		call gfx_unmap
		jmp .egyesek
		
		.hatT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.hat
		call gfx_unmap
		jmp .egyesek
		
		.hetT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,750
		call szamok.het
		call gfx_unmap
		jmp .egyesek
		
		.nyolcT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.nyolc
		call gfx_unmap
		jmp .egyesek
		
		.kilencT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.kilenc
		call gfx_unmap
		jmp .egyesek
	
	.egyesek:
			
		cmp edx,0
		je .nullaE
		
		cmp edx,1
		je .egyE
		
		cmp edx,2
		je .kettoE
		
		cmp edx,3
		je .haromE
		
		cmp edx,4
		je .negyE
		
		cmp edx,5
		je .otE
		
		cmp edx,6
		je .hatE
		
		cmp edx,7
		je .hetE
		
		cmp edx,8
		je .nyolcE
		
		cmp edx,9
		je .kilencE	
		
		.nullaE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.nulla
		call gfx_unmap
		jmp .vege
		
		.egyE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1192
		call szamok.egy
		call gfx_unmap
		jmp .vege
		
		.kettoE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.ketto
		call gfx_unmap
		jmp .vege
		
		.haromE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.harom
		call gfx_unmap
		jmp .vege
		
		.negyE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1172
		call szamok.negy
		call gfx_unmap
		jmp .vege
		
		.otE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.ot
		call gfx_unmap
		jmp .vege
		
		.hatE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.hat
		call gfx_unmap
		jmp .vege
		
		.hetE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,950
		call szamok.het
		call gfx_unmap
		jmp .vege
		
		.nyolcE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.nyolc
		call gfx_unmap
		jmp .vege
		
		.kilencE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.kilenc
		call gfx_unmap
		jmp .vege

.vege:
pop edi
pop edx
pop ebx
ret
;/////////////////////// TOP4 SCORE UGANYÚGY
top4:

	push ebx
	push edx
	push edi
	
	mov edi,1638400
	
	push eax
	push ecx
	mov ecx,10
	mov ebx,[scores+12]
	mov eax,ebx
	cdq 
	idiv ecx
	mov ebx,eax
	pop ecx
	pop eax
	.tizesek:
		
		cmp ebx,0
		je .nullaT
		
		cmp ebx,1
		je .egyT
		
		cmp ebx,2
		je .kettoT
		
		cmp ebx,3
		je .haromT
		
		cmp ebx,4
		je .negyT
		
		cmp ebx,5
		je .otT
		
		cmp ebx,6
		je .hatT
		
		cmp ebx,7
		je .hetT
		
		cmp ebx,8
		je .nyolcT
		
		cmp ebx,9
		je .kilencT
		
		.nullaT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.nulla
		call gfx_unmap
		jmp .egyesek
		
		.egyT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,992
		call szamok.egy
		call gfx_unmap
		jmp .egyesek
		
		.kettoT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.ketto
		call gfx_unmap
		jmp .egyesek
		
		.haromT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.harom
		call gfx_unmap
		jmp .egyesek
		
		.negyT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,924
		call szamok.negy
		call gfx_unmap
		jmp .egyesek
		
		.otT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.ot
		call gfx_unmap
		jmp .egyesek
		
		.hatT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.hat
		call gfx_unmap
		jmp .egyesek
		
		.hetT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,750
		call szamok.het
		call gfx_unmap
		jmp .egyesek
		
		.nyolcT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.nyolc
		call gfx_unmap
		jmp .egyesek
		
		.kilencT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.kilenc
		call gfx_unmap
		jmp .egyesek
	
	.egyesek:
			
		cmp edx,0
		je .nullaE
		
		cmp edx,1
		je .egyE
		
		cmp edx,2
		je .kettoE
		
		cmp edx,3
		je .haromE
		
		cmp edx,4
		je .negyE
		
		cmp edx,5
		je .otE
		
		cmp edx,6
		je .hatE
		
		cmp edx,7
		je .hetE
		
		cmp edx,8
		je .nyolcE
		
		cmp edx,9
		je .kilencE	
		
		.nullaE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.nulla
		call gfx_unmap
		jmp .vege
		
		.egyE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1192
		call szamok.egy
		call gfx_unmap
		jmp .vege
		
		.kettoE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.ketto
		call gfx_unmap
		jmp .vege
		
		.haromE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.harom
		call gfx_unmap
		jmp .vege
		
		.negyE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1172
		call szamok.negy
		call gfx_unmap
		jmp .vege
		
		.otE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.ot
		call gfx_unmap
		jmp .vege
		
		.hatE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.hat
		call gfx_unmap
		jmp .vege
		
		.hetE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,950
		call szamok.het
		call gfx_unmap
		jmp .vege
		
		.nyolcE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.nyolc
		call gfx_unmap
		jmp .vege
		
		.kilencE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.kilenc
		call gfx_unmap
		jmp .vege

.vege:
pop edi
pop edx
pop ebx
ret
;/////////////////////////////// TOP5 SCORE
top5:
push ebx
	push edx
	push edi
	
	mov edi,2048000
	
	push eax
	push ecx
	mov ecx,10
	mov ebx,[scores+16]
	mov eax,ebx
	cdq 
	idiv ecx
	mov ebx,eax
	pop ecx
	pop eax
	.tizesek:
		
		cmp ebx,0
		je .nullaT
		
		cmp ebx,1
		je .egyT
		
		cmp ebx,2
		je .kettoT
		
		cmp ebx,3
		je .haromT
		
		cmp ebx,4
		je .negyT
		
		cmp ebx,5
		je .otT
		
		cmp ebx,6
		je .hatT
		
		cmp ebx,7
		je .hetT
		
		cmp ebx,8
		je .nyolcT
		
		cmp ebx,9
		je .kilencT
		
		.nullaT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.nulla
		call gfx_unmap
		jmp .egyesek
		
		.egyT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,992
		call szamok.egy
		call gfx_unmap
		jmp .egyesek
		
		.kettoT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.ketto
		call gfx_unmap
		jmp .egyesek
		
		.haromT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.harom
		call gfx_unmap
		jmp .egyesek
		
		.negyT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,924
		call szamok.negy
		call gfx_unmap
		jmp .egyesek
		
		.otT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.ot
		call gfx_unmap
		jmp .egyesek
		
		.hatT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.hat
		call gfx_unmap
		jmp .egyesek
		
		.hetT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,750
		call szamok.het
		call gfx_unmap
		jmp .egyesek
		
		.nyolcT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.nyolc
		call gfx_unmap
		jmp .egyesek
		
		.kilencT:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,800
		call szamok.kilenc
		call gfx_unmap
		jmp .egyesek
	
	.egyesek:
			
		cmp edx,0
		je .nullaE
		
		cmp edx,1
		je .egyE
		
		cmp edx,2
		je .kettoE
		
		cmp edx,3
		je .haromE
		
		cmp edx,4
		je .negyE
		
		cmp edx,5
		je .otE
		
		cmp edx,6
		je .hatE
		
		cmp edx,7
		je .hetE
		
		cmp edx,8
		je .nyolcE
		
		cmp edx,9
		je .kilencE	
		
		.nullaE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.nulla
		call gfx_unmap
		jmp .vege
		
		.egyE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1192
		call szamok.egy
		call gfx_unmap
		jmp .vege
		
		.kettoE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.ketto
		call gfx_unmap
		jmp .vege
		
		.haromE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.harom
		call gfx_unmap
		jmp .vege
		
		.negyE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1172
		call szamok.negy
		call gfx_unmap
		jmp .vege
		
		.otE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.ot
		call gfx_unmap
		jmp .vege
		
		.hatE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.hat
		call gfx_unmap
		jmp .vege
		
		.hetE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,950
		call szamok.het
		call gfx_unmap
		jmp .vege
		
		.nyolcE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.nyolc
		call gfx_unmap
		jmp .vege
		
		.kilencE:
		call gfx_map
		add eax,409600
		add eax,edi
		add eax,1000
		call szamok.kilenc
		call gfx_unmap
		jmp .vege

.vege:
pop edi
pop edx
pop ebx
ret
;/////////////////////////////////////////////FAJLBÓL OLVASÁS
szamalakit:

	push ecx
	push eax
	push ebx
	push edx
	push edi
	
		xor eax,eax
		mov eax,fajl
		mov ebx,0
		call fio_open
		
		mov ebx,adat
		mov ecx,32
		call fio_read
		call fio_close
		
		xor ecx,ecx
		xor ebx,ebx
		xor edi,edi
		
		.atalakit:
			xor 	eax,eax	
			mov al,byte [adat+ecx]
			cmp al,byte 0
			je .ide
			
				cmp eax,' '
				je .ez
					sub eax,'0'
					imul ebx,10
					add ebx,eax
				jmp .novel	
			.ez:
				
				mov [scores+4*edi],ebx
				xor ebx,ebx
				inc edi
				
			.novel:
				inc ecx
		jmp .atalakit
			
		.ide:
	
	mov [scores+4*edi],ebx
	pop edi
	pop edx
	pop ebx
	pop eax
	pop ecx

.vege:
ret
;//////////////////////////////////////////FAJLBA ÍRÁS
beir:
	
		push eax
		push ebx
		push ecx
		push edx
		push edi
	
		xor eax,eax
		mov eax,fajl
		mov ebx,1
		call fio_open
		
			mov ecx,-1
			xor edx,edx
			mov edi,-1
			push eax
			xor eax,eax
			mov [scores+20],eax
			.atalaki:
			
					inc ecx
					mov eax,[scores+4*ecx]
					cdq
					mov ebx,10
					div ebx
					add eax,48
					inc edi
					mov [kiadat+edi],eax
					inc edi
					add edx,48
					mov [kiadat+edi],edx
					inc edi
					mov edx,32
					mov [kiadat+edi],edx
			cmp ecx,4
			jne .atalaki
		
		pop eax
		mov ebx,kiadat
		mov ecx,16
		call fio_write
		call fio_close

.vege:

	pop edi
	pop edx
	pop ecx
	pop ebx
	pop eax

ret
;////////////////////////////////////////////////////////////RENDEZ
rendez:
		
	push eax
	push ebx
	push ecx
	push edx
		
		mov ecx,-4
			
		.rendezoK:
			add ecx,4
			mov eax, [scores+ecx]
			mov edx,ecx
			.redezoB:
				
				add edx,4
				mov ebx, [scores+edx]
				
				cmp eax,ebx
				jge .nemcsere
				
						mov   [scores+ecx],ebx
						mov   [scores+edx],eax
				
			.nemcsere:	
			cmp edx,20
			jne .redezoB
			
		cmp ecx, 16
		jne .rendezoK
		
.vege:
	pop edx
	pop ecx
	pop ebx
	pop eax
ret

;////////////////////////////////////////////////////////FÕFÜGGVÉNY

randomSzin:
	push eax
	push edx
	push ecx
	push esi
	push edi
	push ebx
	mov ecx,1000000	;ennyivel kell elosszuk a pszedorandom számot hogy 0 és 1000 közti értéket kapjunk
	xor eax,eax
	.randomolB:
		call rand
		cdq
		idiv ecx
		cmp eax,0
		jge .nemB
		imul eax,-1
		
		.nemB:				;a leesõ cucc bal felsõ sarka
		cmp eax,10
		jl .randomolB
		cmp eax,255		;addig randomolunk új értéket amíg az pályán lesz
		jle .vegeeB
	jmp .randomolB
	.vegeeB:
	mov [randi+4],eax	;behelyezzük a memóriába
	
	mov ecx,1000000	;ennyivel kell elosszuk a pszedorandom számot hogy 0 és 1000 közti értéket kapjunk
	xor eax,eax
	.randomolG:
		call rand
		cdq
		idiv ecx
		cmp eax,0
		jge .nemG
		imul eax,-1
		
		.nemG:				;a leesõ cucc bal felsõ sarka
		cmp eax,1
		jl .randomolG
		cmp eax,255		;addig randomolunk új értéket amíg az pályán lesz
		jle .vegeeG
	jmp .randomolG
	.vegeeG:
	mov [randi+8],eax	;behelyezzük a memóriába
	
	mov ecx,1000000	;ennyivel kell elosszuk a pszedorandom számot hogy 0 és 1000 közti értéket kapjunk
	xor eax,eax
	.randomolR:
		call rand
		cdq
		idiv ecx
		cmp eax,0
		jge .nemR
		imul eax,-1
		
		.nemR:				;a leesõ cucc bal felsõ sarka
		cmp eax,1
		jl .randomolR
		cmp eax,255		;addig randomolunk új értéket amíg az pályán lesz
		jle .vegeeR
	jmp .randomolR
	.vegeeR:
	mov [randi+12],eax	;behelyezzük a memóriába
	pop ebx
	pop edi
	pop esi
	pop ecx
	pop edx
	pop eax
ret

section .text
main:

	mov		eax, WIDTH		
	mov		ebx, HEIGHT		
	mov		ecx,1
	mov		edx, cim	
	call	gfx_init
	
	mov eax,1
	call gfx_showcursor
	xor ecx,ecx						;Ypozicio
	xor edx,edx						;X pozicio
	
	.menucske:
		
			xor eax,eax
			call feketePalya
			call gfx_map
			call palya
			call gfx_unmap
			call gfx_draw
			call gfx_showcursor
			call gfx_map
								
					add eax,40960
					add eax,40
								
					xor ecx,ecx
					xor edx,edx
					.kezdoK:
						xor ecx,ecx
						.kezdoB:
							inc ecx
							call szinek.kek
							add eax,4
						cmp ecx,748
						jl .kezdoB
						inc edx
						add eax,1104
					cmp edx,748
					jl .kezdoK
				call gfx_unmap
				
				call gfx_map
				add eax,1307792
				call betuk.d
				call gfx_unmap
				
				call gfx_map
				add eax,1307792
				call betuk.r
				call gfx_unmap
				
				call gfx_map
				add eax,1307992
				call betuk.o
				call gfx_unmap
				
				call gfx_map
				add eax,1308192
				call betuk.p
				call gfx_unmap
				
				call gfx_map
				add eax,1308400
				call betuk.pont
				call gfx_unmap
				
				call gfx_map
				add eax,1328880
				call betuk.pont
				call gfx_unmap
				
				call gfx_map
				add eax,1349360
				call betuk.pont
				call gfx_unmap
				
				call gfx_map
				add eax,1369840
				call betuk.pont
				call gfx_unmap
				
				call gfx_map
				add eax,1390320
				call betuk.pont
				call gfx_unmap
				
				call gfx_map
				add eax,1410800
				call betuk.pont
				call gfx_unmap
				
				call gfx_map
				add eax,1431280
				call betuk.pont
				call gfx_unmap
				
				call gfx_map
				add eax,1472240
				call betuk.pont
				call gfx_unmap
				
				call gfx_draw
				
				call gfx_map
					add eax, 2345984
					xor ecx,ecx
					xor edx,edx
					.kilepGombK:
						xor ecx,ecx
						 .kilepGombB:
							inc ecx
							call szinek.out
							add eax,4
							cmp ecx,246
							jl .kilepGombB
						inc edx
						add eax,2992
						add eax,120
						cmp edx,187
						jl .kilepGombK
				call gfx_unmap
				
				call gfx_map
				add eax,290044
				call betuk.g
				call gfx_unmap
				
				call gfx_map
				add eax,290244
				call betuk.o
				call gfx_unmap
					
				call gfx_map
				add eax,1109312
				call betuk.h
				call gfx_unmap
				
				call gfx_map
				add eax,1109312
				call betuk.e
				call gfx_unmap
				
				call gfx_map
				add eax,1109652
				call betuk.l
				call gfx_unmap
				
				call gfx_map
				add eax,1109652
				call betuk.p
				call gfx_unmap
				
				call gfx_map
				add eax,1887352
				call betuk.p
				call gfx_unmap
				
				call gfx_map
				add eax,1887492
				call betuk.o
				call gfx_unmap
				
				call gfx_map
				add eax,1887772
				call betuk.i
				call gfx_unmap
				
				call gfx_map
				add eax,1887732
				call betuk.n
				call gfx_unmap
				
				call gfx_map
				add eax,1887932
				call betuk.t
				call gfx_unmap
				
				call gfx_map
				add eax,2665694
				call betuk.o
				call gfx_unmap
				
				call gfx_map
				sub eax,4096
				add eax,2666074
				call betuk.u
				call gfx_unmap
				
				call gfx_map
				add eax,2666104
				call betuk.t
				call gfx_unmap
				
				call gfx_draw
			
			.Event:
		
			xor eax,eax
			xor ebx,ebx
		
			call gfx_getevent
			cmp eax,1
			jne .Event
			call gfx_getmouse
			cmp eax,766
			jl .Event
			cmp eax,1013
			jg .Event
			cmp ebx,196
			jg .nem
			jmp .GameKezdet

			.nem:
			cmp ebx,572
			jl .help
			
			jmp .legvege
			
			.help:
				cmp ebx,384
				jg .points
				jmp .HELP
				
			.points:
			jmp .POINTS
			
			.HELP:
				call gfx_map
				
				add eax,40960
				add eax,40
				
				xor ecx,ecx
				xor edx,edx
				.helK:
					xor ecx,ecx
					.helB:
						inc ecx
						call szinek.kek
						add eax,4
					cmp ecx,748
					jl .helB
					inc edx
					add eax,1104
				cmp edx,748
				jl .helK
				call gfx_unmap
					
					
		call gfx_map
		add eax,409600
		add eax,500
		call betuk.h
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,500
		call betuk.e
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,800
		call betuk.l
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,800
		call betuk.p
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,300
		call betuk.u
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,332
		call betuk.s
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,480
		call betuk.e
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,732
		call betuk.a
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,1000
		call betuk.a
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,1132
		call betuk.n
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,1472
		call betuk.d
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,1700
		call betuk.d
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,1750
		call betuk.t
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,1932
		call betuk.o
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,2250
		call betuk.p
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,2550
		call betuk.l
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,2532
		call betuk.a
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,434176
		add eax,2850
		call betuk.y
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,300
		call betuk.u
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,332
		call betuk.s
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,480
		call betuk.e
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,750
		call betuk.e
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,900
		call betuk.s
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,1032
		call betuk.c
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,1272
		call betuk.t
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,1450
		call betuk.o
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,1800
		call betuk.e
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,1950
		call betuk.s
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,2092
		call betuk.c
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,2232
		call betuk.a
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,2372
		call betuk.p
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,761856
		add eax,2500
		call betuk.e
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1089536
		add eax,100
		call betuk.t
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1089536
		add eax,280
		call betuk.o
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1089536
		add eax,580
		call betuk.m
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1089536
		add eax,760
		call betuk.e
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1089536
		add eax,900
		call betuk.n
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1089536
		add eax,1250
		call betuk.u
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,100
		call betuk.c
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,250
		call betuk.o
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,600
		call betuk.l
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,732
		call betuk.l
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,700
		call betuk.e
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,850
		call betuk.c
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,1000
		call betuk.t
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,1300
		call betuk.t
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,1632
		call betuk.h
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,1600
		call betuk.e
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,1900
		call betuk.c
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,2200
		call betuk.u
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,2220
		call betuk.b
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,2372
		call betuk.e
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1417216
		add eax,2500
		call betuk.s
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,100
		call betuk.t
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,432
		call betuk.h
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,400
		call betuk.e
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,672
		call betuk.m
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,850
		call betuk.e
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,1000
		call betuk.n
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,1332
		call betuk.u
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,1550
		call betuk.i
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,1532
		call betuk.s
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,1950
		call betuk.d
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,2000
		call betuk.i
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,1972
		call betuk.s
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,2132
		call betuk.a
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,2272
		call betuk.b
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,2572
		call betuk.l
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,2550
		call betuk.e
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,1744896
		add eax,2850
		call betuk.d
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,2072576
		add eax,250
		call betuk.i
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,2072576
		add eax,220
		call betuk.n
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,2072576
		add eax,600
		call betuk.g
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,2072576
		add eax,800
		call betuk.a
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,2072576
		add eax,932
		call betuk.m
		call gfx_unmap
		
		call gfx_map
		add eax,409600
		add eax,2072576
		add eax,1100
		call betuk.e
		call gfx_unmap
		
				call gfx_draw
		
		jmp .Event
		
		.POINTS:
			call gfx_map
				
				add eax,40960
				add eax,40
				
				xor ecx,ecx
				xor edx,edx
				.poiK:
					xor ecx,ecx
					.poiB:
						inc ecx
						call szinek.kek
						add eax,4
					cmp ecx,748
					jl .poiB
					inc edx
					add eax,1104
				cmp edx,748
				jl .poiK
				call gfx_unmap
				
				call szamalakit
				call top1
				call top2
				call top3
				call top4
				call top5
				
				call gfx_map
				add eax,409600
				add eax,300
				call betuk.p
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,450
				call betuk.o
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,750
				call betuk.i
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,730
				call betuk.n
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,900
				call betuk.t
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,1100
				call betuk.s
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,409600
				add eax,500
				call szamok.egy
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,409600
				add eax,163840
				add eax,450
				call betuk.pont
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,819200
				add eax,350
				call szamok.ketto
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,819200
				add eax,163840
				add eax,500
				call betuk.pont
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,1228800
				add eax,350
				call szamok.harom
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,1228800
				add eax,163840
				add eax,500
				call betuk.pont
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,1638400
				add eax,472
				call szamok.negy
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,1638400
				add eax,163840
				add eax,500
				call betuk.pont
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,2048000
				add eax,350
				call szamok.ot
				call gfx_unmap
				
				call gfx_map
				add eax,409600
				add eax,2048000
				add eax,163840
				add eax,500
				call betuk.pont
				call gfx_unmap
				
				call gfx_draw
		
		jmp .Event
	
	.GameKezdet:
	
	push eax
	push ebx
	push ecx
	push edx
	push edi
	push esi
	xor eax,eax
	call gfx_showcursor
	mov edi,1300	;Balról a player kezdete, x-be		44-2556
	xor esi,esi
	mov esi,77824	;a lentról számított 20. sor kezdõcíme y-ban
	call randomolo	;edx-ben visszaad 44 és 2472 között egy értékezt mely az esõ cucc felsõ pontjára mutat
	call randomSzin
	xor ebx,ebx
	mov ebx,4096	
	call feketePalya
	xor eax,eax
	mov [spo],eax
	.game:
		xor eax,eax
		xor ecx,ecx
		call gfx_map
		push edi
		call palya						;EAX a 3145728, az utolsó pixelre mutat
		pop edi
		sub eax,esi			;Visszalépünk
		sub eax,4096
		sub eax,4096
		sub eax,4096		;felemeli a player 3 sorral az alaptól, mer  mér ne?
		
			add eax,edi		;belépünk
			xor ecx,ecx
			
			.kintiCiklus:	
				xor edx,edx
				call szinek.fekete
				add eax,4
				.player:
				
					call szinek.piros
					add eax,4
					inc edx
				
				cmp edx,118			;a player 120 pixel hosszú
				jge .bentVege
				jmp .player
				
			.bentVege:
			
			call szinek.fekete
			add eax,3620			;kövi sor
			inc ecx
			cmp ecx,10				;a player 10 pixelsornyi
			jge .kiRajz
			jmp .kintiCiklus
			
			.kiRajz:
			call gfx_unmap
					
					cmp ebx,3059712
					jle .kiugrik
						
						cmp edi,[randi]
						jg .GAMEVEGE
						push ecx
						push edx
						
						mov ecx,edi
						add ecx,480
						mov edx,[randi]
						add edx,60
						cmp edx,ecx	
						pop edx
						pop ecx
						jg .GAMEVEGE
						
						mov ebx,4096
						call randomolo
						call randomSzin
						
						 push eax
						
						 mov eax,[spo]
						 inc eax
						 mov [spo],eax
						 cmp eax,99
						  pop eax
						 jge .GAMEWIN
					
					.kiugrik:
					
					cmp ebx,2977792
					jle .nemfogta1
					
						 cmp edi,[randi]
						 jg .nemfogta1
						 
						push ecx
						push edx
						
						mov ecx,edi
						add ecx,480
						mov edx,[randi]
						add edx,60
						cmp edx,ecx	
						pop edx
						pop ecx
						jg .nemfogta1
						
						mov ebx,4096
						call randomolo
						call randomSzin
						
						call gfx_map
						add eax,3022848
						add eax,40
						push ecx
						push edx
							xor edx,edx
							.torolK:
								xor ecx,ecx
								.torolB:
									inc ecx
									call szinek.fekete
									add eax,4
									cmp ecx,748
									jne .torolB
									inc edx
									add eax,1104
								cmp edx,9
								jne .torolK
						pop edx
						pop ecx
						call gfx_unmap
						
						 push eax
						
						 mov eax,[spo]
						 inc eax
						 mov [spo],eax
						 cmp eax,99
						  pop eax
						 jge .GAMEWIN
					
					.nemfogta1:
					
					call gfx_map
				
					add eax,40960
			
					add eax,[randi]
				
					xor ecx,ecx
					xor edx,edx
				
					add eax,ebx
					add ebx,4096
				
					xor ecx,ecx
					xor edx,edx
					
					.fekete:
						inc ecx
						call szinek.fekete
						add eax,4
					cmp ecx,15
					jle .fekete					
					
					add eax,4032
					
					xor ecx,ecx
					xor edx,edx
					.esoK:
						xor ecx,ecx
							.esoB:
								inc ecx
								call szinek.RAN
								add eax,4
								cmp ecx,15
								jle .esoB
							inc edx
							add eax,4032
						cmp edx,8
						jle .esoK
					
			call gfx_unmap
			
			call pontkiiro
			
			call gfx_draw
			
			push esi
			mov esi,1
			.eventloop:
				
				xor eax,eax
				call gfx_getevent
				
				cmp eax,27
				jne     .GAMEVEGE1
			
				pop esi
				
				push eax
				call szamalakit
				mov eax,[spo]
				mov [scores+20],eax
				call rendez
				call beir
				pop eax
				jmp .ideEsc
				.GAMEVEGE1:
				cmp eax,'a'
				je .balra

				cmp eax,'d'
				je .jobbra
				jne .eventloopVege
				
				.balra:
					mov [balra],esi
					jmp .eventloopVege
				
				.jobbra:
					mov esi,2
					mov [jobbra],esi
				
			.eventloopVege:
			test eax,eax
			jnz .eventloop
			mov esi,1
			cmp [balra],esi
			jne .lehetJobb
			
			sub edi,4
			cmp edi,36
			jle   .balraLe
			jmp .vege
			
			.lehetJobb:
				mov esi,2
				cmp [jobbra],esi
				jne .vege
				.jobbMegy:
					add edi,4
				cmp edi, 2556
				jge   .jobbraLe
				jl     .vege
				
			.balraLe:
				add edi,4
				jmp .vege
				
		.jobbraLe:
			sub edi,4	
						
				.vege:
				mov eax,0
				call sleep
				pop esi
			
	jmp .game

	.GAMEVEGE:
		
		.deathI:
		call gfx_map
				
		add eax,40960
		add eax,40
				
		xor ecx,ecx
		xor edx,edx
		.Deathk:
		xor ecx,ecx
			.Death:
				inc ecx
				call szinek.piros
				add eax,4
			cmp ecx,748
			jl .Death
			inc edx
			add eax,1104
		cmp edx,748
		jl .Deathk
		call gfx_unmap
		call gfx_draw
		
		call gfx_map
		add eax,1090312
		call betuk.y
		call gfx_unmap
		
		call gfx_map
		add eax,1090352
		call betuk.o
		call gfx_unmap
		
		call gfx_map
		add eax,1090712
		call betuk.u
		call gfx_unmap
		
		call gfx_map
		add eax,1307992
		call betuk.l
		call gfx_unmap
		
		call gfx_map
		add eax,1308000
		call betuk.o
		call gfx_unmap
		
		call gfx_map
		add eax,1308232
		call betuk.s
		call gfx_unmap
		
		call gfx_map
		add eax,1308392
		call betuk.e
		call gfx_unmap
		
		call gfx_draw
		
		call szamalakit
		mov eax,[spo]
		mov [scores+20],eax
		
		call rendez
		
		call beir
		
		mov eax,3000
		call sleep
		
		pop esi
		pop edi
		pop edx
		pop ecx
		pop ebx
		pop eax
		
	jmp .menucske
	
	.GAMEWIN:
	
		call gfx_map
				
		add eax,40960
		add eax,40
				
		xor ecx,ecx
		xor edx,edx
		.wink:
		xor ecx,ecx
			.Win:
				inc ecx
				call szinek.zold
				add eax,4
			cmp ecx,748
			jl .Win
			inc edx
			add eax,1104
		cmp edx,748
		jl .wink
		call gfx_unmap
		call gfx_draw
		
		call gfx_map
		add eax,1090312
		call betuk.y
		call gfx_unmap
		
		call gfx_map
		add eax,1090352
		call betuk.o
		call gfx_unmap
		
		call gfx_map
		add eax,1090712
		call betuk.u
		call gfx_unmap
		
		call gfx_map
		add eax,1307992
		call betuk.w
		call gfx_unmap
		
		call gfx_map
		add eax,1308150
		call betuk.i
		call gfx_unmap
		
		call gfx_map
		add eax,1308150
		call betuk.n
		call gfx_unmap
		
		call gfx_draw
		
		call szamalakit
		mov eax,[spo]
		mov [scores+20],eax
		
		call rendez
		
		call beir
		
		mov eax,3000
		call sleep
		.ideEsc:
		pop esi
		pop edi
		pop edx
		pop ecx
		pop ebx
		pop eax
		
		jmp .menucske
	
	.legvege:
ret
	
section .data
	cim db "DROP!",0 
	balra db 1,0
	jobbra db 0,0
	lel  db 1,0 
	randi db 44,0,0,0
	scores db 0,0,0,0,0,0
    adat db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	kiadat db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	fajl dw "drop.point",0
	spo db 0