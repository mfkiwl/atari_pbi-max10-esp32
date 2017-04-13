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

devname = 'R'


;-------------------------------------------------------------------------	
; PBI table (D800-D81C)
		org $D800

pbi_table	.word $BEEF		; ROM checksum - ignored
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
io_vector	sec			
		rts

; no IRQ handling yet
irq_vector	sec
		rts

;-------------------------------------------------------------------------	
; device is registered to OS by setting the appropriate bit in DEVMASK
; and the CIO handler is registered in the HATABS table by calling the NEWDEV routine
init_vector	lda DEVMASK		; get known PBI devices
		ora NDEVREQ		; OR in the current device request bit
		sta DEVMASK		; store the devices back 

; Earl Rice method (ANTIC JAN-APR 1985)
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
;		lda 'R'
;		sta HATABS, x
;		inx
;		
;		lda .LO(GENDEV)
;		lda .HI(GENDEV)
;		sta HATABS + 2, x

		;; roland scholz method
		ldx devname
		lda .HI(GENDEV)
		ldy .LO(GENDEV)
		jsr NEWDEV
	
		sta HATABS+1, x
		tya
		sta HATABS, x
		
		; TODO: device-specific init
		
		rts
;-------------------------------------------------------------------------	

;-------------------------------------------------------------------------	
open_vector			
		sec
		rts

close_vector	ldy #1
		sec
		rts

get_vector	
		sec
		rts

put_vector	
		sec
		rts

status_vector
		sec
		rts

special_vector
		sec
		rts

;-------------------------------------------------------------------------	
		.local text
		.byte 'TangentAudio R:Fi PBI Handler 2017 Steve Richardson'
		.endl
		
