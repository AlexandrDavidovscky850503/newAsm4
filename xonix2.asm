.model small
.stack 400h

.data
    field db 2000 dup(0)
    land db 00100000B
    road db 00110000B
    sea db 00010000B
    whiteText db 00010111B
    
    w db 80
    wWord dw 80
    wm db 79
    h db 25
    hWord dw 25
    hm db 24
    mno dw 160

    
    moveDirection db 4Dh
    currentPos dw 0000h 
    enemiesCount dw 4
    enemiesDirections dw 257 , 511
    enemiesPos dw 0D14h , 0D3Bh
    
    minutes db 0
    seconds db 0
    timeCounter dw 0
    ten db 10
    pointsLimit dw 600
    points dw 0
    pointsShift dw 404
    enemiesMaps dw 0 , 0
    numbersMask db 2000 dup(0)
    maxNumber db 0
    shieldPart db '            '
    gameoverMessage db ' GAME  OVER '
    gameoverText db 10001100B
    winMessage db '  YOU  WIN  '
    winText db 10001010B   
    
    areaRGB db   00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00100000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B,
            db   00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B, 00010000B

    
    
        two dw 2
        currentAdr  dw 0
        symbol dw ' '
   
.code

proc hideCursor near;�������� �������
    pusha
    mov ah , 02
    mov bh , 00
    mov dh , 25
    int 10h
    popa
    ret
endp

proc coordsToAddress near;�������� �������� ��� �������� � ������������ (dl(�) , dh(�))
                         ;   si - res
    push ax
    push cx

    mov al , dh;������� 'y'                 
    cbw        ;�������������� ����� � �����
    mul w
    xor ch , ch
    mov cl , dl ;������� �                                                                                                                                                                                                                        
    add ax , cx ;��������� � �������� 'y', ����������� �� ����� ������, ������� � ������ ������                                                                                                                                                  
    mov si , ax
    mov [currentAdr],ax
    pop cx
    pop ax
    ret
endp  

proc printFromField near
;   dh - y 
;   dl - x
;   
    pusha
    
    mov ah , 02;��������� ��������� �������
    xor bh , bh;bh-��� dh-������           
    int 10h
    
    call coordsToAddress
;======================================================== 

     push  0B800h                   ;
     pop   es     

        mov ax,si
        mul two
       mov di,ax
     mov es:[di], ' '  
     inc di                  ;  
     mov al,field[si] 
     mov es:[di],al  ; 
     
;========================================================

;    mov ah , 09             ; ������ ������ � ������� ������� �������       
;    mov al , ' '            ; ������������ ������ 
;                              
;    mov bl , [field + si]   ; ����� ������� (�����) ��� ���� (�������)      
;    mov cx , 1              ; ������� (������� ����������� ������� ��������)
;    int 10h                 
    
    call hideCursor
    
    popa
    ret
endp

proc setToField near
;   dh - y 
;   dl - x
;   al - ��������
    pusha
    
    mov ah , 02
    xor bh , bh
    int 10h
    
    call coordsToAddress
    
    mov [si] , al
    
    popa
    ret
endp    

proc clearKeyboardBuffer near ;�������� ������ ����������

    push ax
    push es
    push bx
    mov bx , 041eh
    mov	ax, 0000h
    mov	es, ax
    mov	es:[041ah], bx  ;�������� ����� ������
    mov	es:[041ch], bx  ;�������� ����� ����� 
    pop bx
    pop	es
    pop	ax

    ret
endp

proc printTime near ; ������� �����
    pusha 
    
    mov cx , 10
    
    mov ax , [timeCounter]
    xor dx , dx
    
    div cx
    
    mov dl , 60
    div dl
    
    mov [minutes] , al
    mov [seconds] , ah
    
    xor bh , bh
    mov bl , [whiteText]
    mov cx , 1
    
    xor ah , ah
    mov al , [minutes]
    div [ten]
    
    mov dx , ax
    add dx , '00'
    
    pusha
    xor dh , dh
    mov dl , 75
    mov ah , 02
    xor bh , bh
    int 10h
    popa
    mov ah , 09h
;   ������� ������ ������   
    mov al , dl
    int 10h
    
    pusha
    xor dh , dh
    mov dl , 76
    mov ah , 02
    xor bh , bh
    int 10h
    popa
;   ������� ������ ������    
    mov al , dh
    int 10h
    
    pusha
    xor dh , dh
    mov dl , 77
    mov ah , 02
    xor bh , bh
    int 10h
    popa
    
    mov al , ':'
    int 10h
    
    xor ah , ah
    mov al , [seconds]
    div [ten]
    
    mov dx , ax
    add dx , '00'
    
    pusha
    xor dh , dh
    mov dl , 78
    mov ah , 02
    xor bh , bh
    int 10h
    popa
    mov ah , 09h
;   ������� ������ �������
    mov al , dl
    int 10h
    
    pusha
    xor dh , dh
    mov dl , 79
    mov ah , 02
    xor bh , bh
    int 10h
    popa
;   ������� ������ �������
    mov al , dh
    int 10h
    
    call hideCursor
    
    popa
    ret
endp

proc printField near    ; �������� ���� �� �����
    pusha
    
    xor dx , dx
    fieldPrintRows:
        fieldPrintColumns:
        
        call printFromField
        
        inc dl      ;x
        cmp dl , w
        jb fieldPrintColumns
        
    xor dl , dl
    inc dh
    cmp dh , h
    jne fieldPrintRows    
    
    popa
    ret
endp

proc loadLevel near ; �������� ������ �� �����
    pusha
    
    xor di , di
    xor si , si
    fileReadLoop:
    

    mov ah , [areaRGB +di] 
    mov [field + si] , ah
    inc di
    inc si
    cmp si , 2000
    jb fileReadLoop
    
    
    popa
    ret
endp    

proc printXonix near    ; ������������ xonix � ������� �������
    pusha
    
    mov ah , 02         ; ��������� ������� �������
    xor bh , bh
    int 10h
    
    mov ah , 09         ; ������ ������ � ������� ������� �������
    mov al , 01h        ; ������������ ������                     
    mov bl , 11110000B  ; �������� �������                        
    mov cx , 1          ; 1 ������                                
    int 10h
    
    call hideCursor
    
    popa
    ret
endp    

proc printEnemy near    ;��������� �����
    pusha
    
    mov ah , 02         ;����������� ������� 
    xor bh , bh         ;
    int 10h             ;
    
    mov ah , 09         ;����� �������� �������
    mov al , 02h        ;
    mov bl , 00101100B  ;
    mov cx , 1          ;
    int 10h             ;
    
    call hideCursor
    
    popa
    ret
endp    

proc calcScore near ;������� ����
    pusha
    
    xor dx , dx
    
    xor si , si
    calcScoreLoop:
    
    mov ah , [field + si]
    cmp ah , [sea]
    jne notSea
    
    inc dx
    
    notSea:
    inc si
    cmp si , 2000
    jb calcScoreLoop
    
    sub dx , [pointsShift]
    
    mov [points] , dx
    
    popa
    ret
endp    

proc printScore near    ; ������� � ����� ���������� ����� ����� ����
    pusha
    
    call calcScore
    
    mov bx , 10
    mov ax , [pointsLimit]
    
    mov cx , 4
    
    divLimitLoop:
    
    xor dx , dx
    div bx
    add dl , '0'
    push dx
    
    loop divLimitLoop
    
    xor dh , dh
    mov dl , '\'
    push dx
    
    mov ax , [points]
    mov cx , 4
    
    divPointsLoop:
    
    xor dx , dx
    div bx
    add dl , '0'
    push dx
    
    loop divPointsLoop
    
    xor di , di
    
    mov bl , [whiteText]    ; ����� ����� �� ����� ���� 
    xor bh , bh             ; �������� 0                
                                                        
    mov cx , 1              ; 1 ������                  
    
    printScoreLoop:
    
    pusha
    mov dx , di
    mov ah , 02
    xor bh , bh
    int 10h
    popa
    
    pop dx
    mov ah , 09h
    mov al , dl
    int 10h
    
    inc di
    cmp di , 9
    jb printScoreLoop
    
    call hideCursor
    
    popa
    ret
endp  

proc remap near
; �������� ��� ������� � ������� �h �� ����� bh � numbersMask
    pusha
    
    xor si , si
    remapLoop:
    
    mov cl , [numbersMask + si]
    cmp cl , ch
    jne remapFinished
    
    mov [numbersMask + si] , bh
    
    remapFinished:
    
    inc si
    cmp si , 2000
    jb remapLoop
    
    popa
    ret
endp    

proc initMask near  ; ���������� �������-�����
    pusha
    
    mov dx , 0101h
    maskInitRows:
        maskInitColumns:
        
        call coordsToAddress
        
        mov al , [field + si]
        cmp al , [land]
        jne maskItemFinish
        
        mov ah , [numbersMask + si]     ; A                
        mov bh , [numbersMask + si - 1] ; B                
                                                           
        sub si , [wWord]                ; ��������� �����  
        mov ch , [numbersMask + si]     ; C                
        add si , [wWord]                ; ��������� �������
        
        cmp ch , 0
        jne notCase2
        cmp bh , 0
        jne notCase2
        
        mov ah , [maxNumber]        ; �������� � ah ������������ ����� �������
        inc ah                      
        mov [maxNumber] , ah
        mov [numbersMask + si] , ah
        
        jmp maskItemFinish
        notCase2:
        
        cmp ch , 0
        jne notCase4
        cmp bh , 0
        je notCase4
        
        mov [numbersMask + si] , bh
        
        jmp maskItemFinish
        notCase4:
        
        cmp bh , 0
        jne notCase3
        cmp ch , 0
        je notCase3
        
        mov [numbersMask + si] , ch
        
        jmp maskItemFinish
        notCase3:
        
        cmp bh , 0
        je notCase5
        cmp ch , 0
        je notCase5
        cmp ch , bh
        je equals
        
        call remap
        
        equals:
        
        mov [numbersMask + si] , bh
        
        notCase5:
        maskItemFinish:
        
        inc dl
        cmp dl , [w]
        jb maskInitColumns
        
    mov dl , 1
    inc dh
    cmp dh , [h]
    jne maskInitRows    
    
    popa
    ret
endp    

proc initEnemiesNumbers near    ;��������� ������ �������� � �������
    pusha
    
    xor di , di
    enemiesNumbers:
    
    mov dx , [enemiesPos + di]
    call coordsToAddress
    
    mov al , [numbersMask + si]
    xor ah , ah
    
    mov [enemiesMaps + di] , ax
    add di , 2
    cmp di , [enemiesCount]
    jb enemiesNumbers
    
    popa
    ret
endp    

proc autofill near  ;���������� �����
    pusha
    
    mov dx , 0101h
    fillRows:
        fillColumns:
        
        call coordsToAddress
        
        mov bl , [numbersMask + si]
        
        cmp bl , 0
        je notFilling
        
        xor di , di
        
        enemiesFill:
            
            mov ax , [enemiesMaps + di]
            
            cmp bl , al
            je fillFinished
            
            add di , 2
            cmp di , [enemiesCount]
            jb enemiesFill
        ; ���� � ���� ������� ���� ������
        mov bh , [sea]
        mov [field + si] , bh
        
        fillFinished:
        
        xor al , al                     ; �������� ����� �� ������� �������� 
        mov [numbersMask + si ] , al    ;                                    
        
        notFilling:
        
        inc dl
        cmp dl , w
        jb fillColumns
        
    mov dl , 1
    inc dh
    cmp dh , h
    jne fillRows    
    
    popa
    ret
endp    

proc fill near  ; ���������� ������ � ��������� ��������
    pusha

    mov dx , [currentPos]
    mov ch , [road]
    
    inc dh
    
    call coordsToAddress
    cmp ch , [si]
    je fillPermited
    
    sub dh , 2
    
    call coordsToAddress
    cmp ch , [si]
    je fillPermited
    
    inc dh
    dec dl
    
    call coordsToAddress
    cmp ch , [si]
    je fillPermited
    
    add dl , 2
    
    call coordsToAddress
    cmp ch , [si]
    je fillPermited
    
    jmp fillEnd
    fillPermited:
    
    xor si , si
    fillLoop:
    
    mov cl , [field + si]
    mov ch , [sea]
    cmp cl , [road]
    jne fillNotRoad
    mov [field + si] , ch
    
    fillNotRoad:
    inc si
    cmp si , 2000
    jb fillLoop
    
    call initMask
    call initEnemiesNumbers
    call autofill
    call printField
    
    fillEnd:
    popa
    ret
endp    

proc moveXonix near;�������� xonix� �� ���� ���������
    push ax
    push dx
    
    mov ah , [moveDirection]
    mov dx , [currentPos]
;     Up
    cmp ah , 48h
    jne moveNotUp
        cmp dh , 0
        je endXonixMove
        dec dh
        jmp endXonixMove
    
    moveNotUp:
;     Left
    cmp ah , 4Bh
    jne moveNotLeft
        cmp dl , 0
        je endXonixMove
        dec dl
        jmp endXonixMove
    
    moveNotLeft:
;     Right
    cmp ah , 4Dh
    jne moveNotRight
        cmp dl , wm
        je endXonixMove
        inc dl
       jmp endXonixMove
    
    moveNotRight:
;     Down
    cmp ah , 50h
    jne moveNotDown
        cmp dh , hm
        je endXonixMove
        inc dh
        jmp endXonixMove
    
    moveNotDown:
    endXonixMove:
    
    mov [currentPos] , dx
    
    call printXonix
    
    pop dx
    pop ax
    
    ret
endp

proc moveEnemies near   ;�������� ����� �� ���� ���������
;   dh - y
;   dl - x
;   bh - y
;   bl - x
    pusha
    
    xor di , di
    
    enemyLoopMain:
    
    mov dx , [enemiesPos + di]
    
    mov bx , [enemiesDirections + di]
;     Horizontal
    add dl , bl
;   ����� �� ���������� ��������� ������    
    call coordsToAddress
    mov cl , [field + si]
    cmp cl , [sea]
    jne moveHorizontalGood
;   �������� ��������    
    neg bl      ;���������
    
    add dl , bl
    add dl , bl
    
    call coordsToAddress
    mov cl , [field + si]
    cmp cl , [sea]
    jne moveHorizontalGood
;   �� ���� ��� ������ ��������� ������
    sub dl , bl
    xor bl , bl
    
    moveHorizontalGood:
;     Vertical
    add dh , bh
;   ����� �� ���������� ��������� ������
    call coordsToAddress
    mov cl , [field + si]
    cmp cl , [sea]
    jne moveVerticalGood
;   �������� ��������
    neg bh
    
    add dh , bh
    add dh , bh
    
    call coordsToAddress
    mov cl , [field + si]
    cmp cl , [sea]
    jne moveVerticalGood
;   �� ���� ��� ������ ��������� ������
    sub dh , bh
    xor bh , bh
    
    moveVerticalGood:
    
    mov [enemiesDirections + di] , bx
    mov [enemiesPos + di] , dx
    
    call printEnemy
    
    add di , 2
    
    cmp di , enemiesCount
    jb enemyLoopMain
    
    popa
    ret
endp    

proc move near  ;������� ���������� �� ��������
    call moveXonix
    call moveEnemies
    ret
endp    

proc level near
    pusha
    
    mainLevelLoop:

    mov ah , 01             ; �������� ������� ������� � ������
    int 16h                 ;
    
    call clearKeyboardBuffer
    
;     Esc to exit
    cmp al , 1Bh
    je gameOver
    
    mov dx , [currentPos]
    
    call coordsToAddress
    
    mov bl , [field + si]
    
    cmp bl , land
    jne levelNotLand
    mov bl , road
    mov [field + si] , bl
    levelNotLand:
    
    call printField
    
    
;     Up
    cmp ah , 48h
    jne levelNotUp
        mov [moveDirection] , ah
    
    levelNotUp:
;     Left
    cmp ah , 4Bh
    jne levelNotLeft
        mov [moveDirection] , ah
    
    levelNotLeft:
;     Right
    cmp ah , 4Dh
    jne levelNotRight
       mov [moveDirection] , ah
    
    levelNotRight:
;     Down
    cmp ah , 50h
    jne levelNotDown
        mov [moveDirection] , ah
    
    levelNotDown:
    
    call move
    
    call printScore
    
    mov ax , [points]
    cmp ax , [pointsLimit]
    jae win
    
    mov ax , [timeCounter]
    inc ax
    cmp ax , 36000
    jb timeOk
    xor ax , ax
    
    timeOk:
    mov [timeCounter] , ax
    
    call printTime
    
    xor di , di
    checkEnemiesLoop:
    
    mov dx , [enemiesPos + di]
    
    cmp dx , currentPos
    je gameOver
    
    call coordsToAddress
    mov bl , [field + si]
    cmp bl , road
    je gameOver
    
    add di , 2
    cmp di , enemiesCount
    jb checkEnemiesLoop
    ;���� �� �� ���� �� ���������� ������ � ����
    mov dx , [currentPos]
    call coordsToAddress
    mov bl , [field + si]
    cmp bl , sea
    jne mainLevelLoopWait
    
    call fill
    
    mainLevelLoopWait:
    
    mov ah , 86h
    mov cx , 0
    mov dx , 45000
    int 15h
    
    jmp mainLevelLoop
    gameOver:
    
    mov ax , @data
    mov es , ax
    
    mov ah , 13h
    xor al , al
    xor bh , bh
    mov bl , [gameoverText]
    mov cx , 12
    mov dl , 34
    
    lea bp , shieldPart
    mov dh , 0Ch
    int 10h
    
    lea bp , gameoverMessage
    mov dh , 0Dh
    int 10h
    
    lea bp , shieldPart
    mov dh , 0Eh
    int 10h
    
    xor ah , ah
    int 16h
    
    jmp levelEnd
    win:
    
    mov ax , @data
    mov es , ax
    
    mov ah , 13h
    xor al , al
    xor bh , bh
    mov bl , [winText]
    mov cx , 12
    mov dl , 34
    
    lea bp , shieldPart
    mov dh , 0Ch
    int 10h
    
    lea bp , winMessage
    mov dh , 0Dh
    int 10h
    
    lea bp , shieldPart
    mov dh , 0Eh
    int 10h
    
    xor ah , ah
    int 16h
    
    jmp levelEnd
    levelEnd:
    popa
    ret
endp    

start:
    mov ax , @data
    mov ds , ax
    
    call loadLevel
    
;   Set 16-color text mode ( 25 x 80 )
    mov ah , 00
    mov al , 03
    int 10h
    
    mov dx , 0a30h
    call printField    
    
    call level
        
    mov    ah,4ch        
    int    21h        
end start
