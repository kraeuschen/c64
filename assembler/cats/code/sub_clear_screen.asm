;===================================
; one call sub routines
;===================================

clear_screen    lda #$00                        ; black
                sta $d020                       ; border
                lda picture_address + $2710     ; gray
                sta $d021                       ; background
                jsr $e544                       ; clear screen

