; ciclo while do  contatore da 0 a 9

TITLE ciclo while do 
.MODEL SMALL    
    
.DATA
    
    vettore          DB    01h,'A' ,02h,03h,'A' ,0h,05h,'A' ,0h,07h,08h,09h,0Bh,'A',45,71,54,6,65,65,11,1,2,3,4,5,1,'!'
    vettorecopia     DB    DUP 100 (?)
.CODE                                                                                                
    
.STARTUP         
    lea si,vettore
    lea di,vettorecopia    
ciclo:        
    mov al,[si]
    ;mov bl,[di]
    cmp al,'!'
    jne nonuguale
    jmp saltafine
nonuguale:
    mov [di],al
    ;mov bl,[di]
    inc di
    inc si
    jmp ciclo
saltafine: 
;servizio DOS di chiusura programma
    mov ax, 4c00h ; exit to operating system.
    int 21h    
END

