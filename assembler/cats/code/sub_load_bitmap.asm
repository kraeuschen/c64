;===================================
; loads a koala bitmap to vic bank ii
;===================================

load_cats   lda $dc0d
            lda $dd0d
            asl $d019

            ; bitmap
            ;lda $4710              ; load bit map image routine
            ;sta $d020
            ;sta $d021
            ldx #$00

            ; vic bank 2
            lda $dd00               ; $4000-$7fff
            and #252
            ora #2
            sta $dd00

cats        lda $7f40,x
            sta $4000,x
            lda $8040,x
            sta $4100,x
            lda $8140,x
            sta $4200,x
            lda $8240,x
            sta $4300,x
            lda $8328,x
            sta $d800,x
            lda $8428,x
            sta $d900,x
            lda $8528,x
            sta $da00,x
            lda $8628,x
            sta $db00,x
            dex
            bne cats

            lda #8
            sta $d018

            ldx #$18
            lda $d011

            ora #$20
            sta $d011
            stx $d016

            jsr main