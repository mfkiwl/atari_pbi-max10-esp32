; PBI R:Fi PBI ROM Handler
; 2017APR12 Steve Richardson (TangentAudio)
;-------------------------------------------------------------------------	



;-------------------------------------------------------------------------	
; tell MADS to get rid of header bytes
		opt h-f+


;-------------------------------------------------------------------------	
NEWDEV = $E486
GENDEV = $E48F

DEVMASK = $0247 ; PBI devices known to OS
NDEVREQ = $0248 ; activated PBI device

HATABS = $031A

IOCBCHIDZ = $20

DEVREG = $D100

devname = 'R'



;-------------------------------------------------------------------------	
; PBI table (D800-D81C)
		org $D800

pbi_table	.word $0000		; ROM checksum - ignored
		.byte $00		; ROM revision - ignored
		.byte $80		; Signature Byte ($80)
		.byte $00		; device type
		jmp io_vector		; I/O vector
		jmp irq_vector		; IRQ vector
		.byte $91		; Signature Byte ($91)
		.byte devname		; device name (ASCII char)
			
		
					; note: all HATABS entries below are -1
		.word open_vector-1	; HATABS - open 
		.word close_vector-1	; HATABS - close
		.word get_vector-1	; HATABS - get byte
		.word put_vector-1	; HATABS - put byte
		.word status_vector-1	; HATABS - status
		.word special_vector-1	; HATABS - special
		jmp init_vector		; initialization vector
		.byte $00		; unused

;-------------------------------------------------------------------------	

; not implementing now	
io_vector	clc			
		rts

; no IRQ handling yet
irq_vector	
		rts

;-------------------------------------------------------------------------	
; device is registered to OS by setting the appropriate bit in DEVMASK
; and the CIO handler is registered in the HATABS table by calling the NEWDEV routine
init_vector	lda DEVMASK		; get known PBI devices
		ora NDEVREQ		; OR in the current device request bit
		sta DEVMASK		; store the devices back 

; Earl Rice method (ANTIC JAN-APR 1985) - seems to populate HATABS properly
;		ldx #0
;search
;		lda HATABS, x
;		beq found	; found a spot (=0)
;		inx
;		inx
;		inx
;		cpx #36		; length of HATABS
;		bcc search
;		rts		; no room in HATABS
;found
;		lda #devname
;		sta HATABS, x
;		inx
;		
;		lda #<GENDEV
;		sta HATABS, x
;		inx
;		lda #>GENDEV
;		sta HATABS, x

		;; roland scholz/fjc method using the NEWDEV routine in the OS
		ldx #devname
		lda #.HI(GENDEV)
		ldy #.LO(GENDEV)
		jsr NEWDEV		; returns: N = 1 - failed, C = 0 - success, C =1 - entry already exists
		
		; TODO: something useful with result codes
	

		; TODO: device-specific init

		lda #01			; turn on an LED to indicate PBI init was a success
		sta DEVREG

	
		rts

;-------------------------------------------------------------------------	
open_vector			
		; per Roland Scholz:
		; GENDEV then activates all registered PBI devices one by one and jumps to the open routine through
		; the open vector contained in the data structure. The open routine should then check if it supports
		; the given handler name (Z:) by checking the content of address IOCBCHIDZ
		; Several PBI devices can share the GENDEV driver as long as each firmware checks whether it is the one the OS wants to call

		; FlashJazzcat found first byte of ICBALZ/ICBALH ($24/$25) to contain the device name, not IOCBCHIDZ which is an index...?
		; Still working with him to attain U1MB coexistence... 

		; Suffice it to say we're not doing any of this yet!
		ldy #1
		sec
		rts

close_vector	
		ldy #1
		sec
		rts

get_vector	
		ldy #1
		sec
		rts

put_vector	
		; this is about as simple as it gets - output the byte to the test LEDs
		; this is confirmed to work with a simple BASIC program that OPENs R: and PUTs bytes - but only if U1MB PBI disabled
		; (see above)
		sta DEVREG

		ldy #1
		sec
		rts

status_vector
		ldy #1
		sec
		rts

special_vector
		ldy #1
		sec
		rts

;-------------------------------------------------------------------------	
		.local banner
		.byte 'TangentAudio R:Fi PBI Handler 2017 Steve Richardson'
		.endl
		
