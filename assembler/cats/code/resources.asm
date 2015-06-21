;================================
; external resources to load
;================================

picture_address = $6000                 ; loading address for bitmap ($6000 bank 2)
music_address = $1000                   ; loading address for sid tune

* = picture_address
!bin "resources/cats.kla",,2

* = music_address
!bin "resources/confusion.sid",,$7c+2   ;remove header from sid and cut off original loading address

