    errorlevel -207, -205
    #include <p16f877.inc>
    #include "incus.inc"
    tmp1 equ 0x20
    tmp2 equ 0x21    

    org 0x00
    inicializace
    
    start:
    
    bsf PORTD, 0
    call delay
    bcf PORTD, 0

    bsf PORTD, 1
    call delay
    bcf PORTD, 1

    bsf PORTD, 2
    call delay
    bcf PORTD, 2

    bsf PORTD, 3
    call delay
    bcf PORTD, 3

    bsf PORTD, 4
    call delay
    bcf PORTD, 4

    bsf PORTD, 5
    call delay
    bcf PORTD, 5

    bsf PORTD, 6
    call delay
    bcf PORTD, 6
    
    bsf PORTD, 7
    call delay
    bcf PORTD, 7
    
    bsf PORTD, 6
    call delay
    bcf PORTD, 6

    bsf PORTD, 5
    call delay
    bcf PORTD, 5

    bsf PORTD, 4
    call delay
    bcf PORTD, 4

    bsf PORTD, 3
    call delay
    bcf PORTD, 3

    bsf PORTD, 2
    call delay
    bcf PORTD, 2

    bsf PORTD, 1
    call delay
    bcf PORTD, 1

    goto start

    delay:
        movlw 0xFF
        movwf tmp2
	
        delay_loop2:
	        movlw 0xFF
	        movwf tmp1
	
	        delay_loop1:
		        decfsz tmp1, 1
		        goto delay_loop1
		
		        decfsz tmp2, 1
		        goto delay_loop2
            
    end
    
