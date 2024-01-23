    errorlevel - 205 , -207
    include <p16f877a.inc>
    include "pokus.inc"
    tmp1 equ 0x20
    tmp2 equ 0x21
    tmp3 equ 0x22
    
    org 0x00 
    ;musim ud2lat inicializaci
    inicializace
    start:
  
    movlw 0x04
    movwf tmp3
   skok1: bsf PORTD, 6
    call zpozdeni
    bcf PORTD, 6
    
    bsf PORTD, 5
    call zpozdeni
    bcf PORTD, 5
    
    
    bsf PORTD, 4
    call zpozdeni
    bcf PORTD, 4
 
    bsf PORTD, 3
    call zpozdeni
    bcf PORTD, 3
    

    bsf PORTD, 2
    call zpozdeni
    bcf PORTD, 2
    
  
    bsf PORTD, 1
    call zpozdeni
    bcf PORTD, 1
    
   
    bsf PORTD, 0
    call zpozdeni
    bcf PORTD, 0
    
    decfsz tmp3 , 1
    goto skok1
    
    
    
    movlw 0x04
    movwf tmp3
  skok22: 
    bsf PORTD, 3
    call zpozdeni
    bcf PORTD, 3
    
    bsf PORTD, 4
    bsf PORTD, 2
    call zpozdeni
    bcf PORTD, 4
    bcf PORTD, 2
    
    bsf PORTD, 1
    bsf PORTD, 5
    call zpozdeni
    bcf PORTD, 1
    bcf PORTD, 5
    
    bsf PORTD, 0
    bsf PORTD, 6
    call zpozdeni
    bcf PORTD, 6
    bcf PORTD, 0
    
    

    decfsz tmp3 , 1
    goto skok22
    
    
    
    
    movlw 0x04
    movwf tmp3
   skok33: bsf PORTD, 0
    call zpozdeni
    bcf PORTD, 0
    
    bsf PORTD, 1
    call zpozdeni
    bcf PORTD, 1
    
    
    bsf PORTD, 2
    call zpozdeni
    bcf PORTD, 2
 
    bsf PORTD, 3
    call zpozdeni
    bcf PORTD, 3
    

    bsf PORTD, 4
    call zpozdeni
    bcf PORTD, 4
    
  
    bsf PORTD, 5
    call zpozdeni
    bcf PORTD, 5
    
   
    bsf PORTD, 6
    call zpozdeni
    bcf PORTD, 6
    
    decfsz tmp3 , 1
    goto skok33
    
    movlw 0x04
    movwf tmp3
   skok44: bsf PORTD, 0
    bsf PORTD, 6
    call zpozdeni
    bcf PORTD, 6
    bcf PORTD, 0
    
    bsf PORTD, 1
    bsf PORTD, 5
    call zpozdeni
    bcf PORTD, 1
    bcf PORTD, 5
    
    bsf PORTD, 4
    bsf PORTD, 2
    call zpozdeni
    bcf PORTD, 4
    bcf PORTD, 2
    
    bsf PORTD, 3
    call zpozdeni
    bcf PORTD, 3
    
    decfsz tmp3 , 1
    goto skok44
    
    nop
    
    
       goto start
       
  zpozdeni:
        movlw 0xDD
	 movwf tmp2
  skok2:    movlw 0xFF
	    movwf tmp1

    skok:   decfsz tmp1, 1
	    goto skok 
	decfsz tmp2, 1
	goto skok2
	
       
    end
