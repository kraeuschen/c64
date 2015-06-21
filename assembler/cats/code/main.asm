;===================================
; main.asm triggers all subroutines
; and runs the Interrupt Routine
;===================================

init    jsr clear_screen
        jsr load_cats

main    sei                 ; set interrupt disable flag
        lda #$00
        tax
        tay
        jsr init_sid
        lda #$7f
        sta $dc0d
        sta $dd0d
        lda #$01
        sta $d01a
        lda #$1b
        ldx #$08
        ldy #$14
        sta $d011
        stx $d016
        sty $d014
        lda #<irq           ; setup irq for sid
        ldx #>irq
        ldy #$7e
        sta $0314
        stx $0315
        sty $d012
        lda $dc0d
        lda $dd0d
        asl $d019
        cli

                            ; display of cats in bitmap mode needs to be here
                            ; dunno why yet, if using jsr its on the wrong bank
        lda #8
        sta $d018

        ldx #$18
        lda $d011

        ora #$20
        sta $d011
        stx $d016

        jmp *               ; infinite loop

;================================
; Our custom interrupt routines 
;================================

irq     jsr play_sid        ; play the music
        asl $d019           ; ack irq
        jmp $ea81           ; back to kernel
