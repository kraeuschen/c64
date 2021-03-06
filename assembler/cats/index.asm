;============================================================
; jsd98 c64 cats
;
; (c) 2015
;
;============================================================
; This is the index file which loads all code and resources
;============================================================

;------------------------------------------------------------
;                         START                             
;------------------------------------------------------------

;------------------------------------------------------------
; output file
;------------------------------------------------------------
!cpu 6502
!to "build/cats.prg",cbm

;------------------------------------------------------------
; external resources
;------------------------------------------------------------
!source "code/resources.asm"

;------------------------------------------------------------
; basic loader
;------------------------------------------------------------
* = $0801
!byte $0b,$08,$00,$00,$9e,$32,$30,$36,$31,$00,$00,$00

;------------------------------------------------------------
; config files to define and initialize symbols/sprite data 
;------------------------------------------------------------
!source "code/config_symbols.asm"

;------------------------------------------------------------
; main
;------------------------------------------------------------
!source "code/main.asm"

;------------------------------------------------------------
; one-time called subroutines
;------------------------------------------------------------
!source "code/sub_clear_screen.asm"
!source "code/sub_load_bitmap.asm"

;------------------------------------------------------------
;                         THE END                             
;------------------------------------------------------------