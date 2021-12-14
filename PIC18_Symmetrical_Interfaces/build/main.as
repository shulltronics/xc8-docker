subtitle "Microchip MPLAB XC8 C Compiler v2.32 (Free license) build 20210201212658 Og9 "

pagewidth 120

	opt flic

	processor	18F47K40
include "/usr/share/microchip/xc8/v2.32/pic/include/proc/18f47k40.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 55 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RX2PPS equ 0E8Dh ;# 
# 89 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CK2PPS equ 0E8Eh ;# 
# 94 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TX2PPS equ 0E8Eh ;# 
# 155 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP2CLKPPS equ 0E8Fh ;# 
# 189 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP2DATPPS equ 0E90h ;# 
# 223 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP2SSPPS equ 0E91h ;# 
# 257 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP2BUF equ 0E92h ;# 
# 277 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP2ADD equ 0E93h ;# 
# 397 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP2MSK equ 0E94h ;# 
# 467 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP2STAT equ 0E95h ;# 
# 921 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP2CON1 equ 0E96h ;# 
# 1041 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP2CON2 equ 0E97h ;# 
# 1228 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP2CON3 equ 0E98h ;# 
# 1290 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RC2REG equ 0E99h ;# 
# 1295 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RCREG2 equ 0E99h ;# 
# 1328 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TX2REG equ 0E9Ah ;# 
# 1333 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TXREG2 equ 0E9Ah ;# 
# 1366 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SP2BRG equ 0E9Bh ;# 
# 1373 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SP2BRGL equ 0E9Bh ;# 
# 1378 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SPBRG2 equ 0E9Bh ;# 
# 1411 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SP2BRGH equ 0E9Ch ;# 
# 1416 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SPBRGH2 equ 0E9Ch ;# 
# 1449 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RC2STA equ 0E9Dh ;# 
# 1454 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RCSTA2 equ 0E9Dh ;# 
# 1623 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TX2STA equ 0E9Eh ;# 
# 1628 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TXSTA2 equ 0E9Eh ;# 
# 1779 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
BAUD2CON equ 0E9Fh ;# 
# 1784 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
BAUDCON2 equ 0E9Fh ;# 
# 1788 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
BAUDCTL2 equ 0E9Fh ;# 
# 2142 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PPSLOCK equ 0EA0h ;# 
# 2162 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
INT0PPS equ 0EA1h ;# 
# 2222 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
INT1PPS equ 0EA2h ;# 
# 2282 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
INT2PPS equ 0EA3h ;# 
# 2342 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T0CKIPPS equ 0EA4h ;# 
# 2402 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T1CKIPPS equ 0EA5h ;# 
# 2468 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T1GPPS equ 0EA6h ;# 
# 2534 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T3CKIPPS equ 0EA7h ;# 
# 2600 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T3GPPS equ 0EA8h ;# 
# 2666 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T5CKIPPS equ 0EA9h ;# 
# 2732 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T5GPPS equ 0EAAh ;# 
# 2798 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T2INPPS equ 0EABh ;# 
# 2864 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T4INPPS equ 0EACh ;# 
# 2930 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T6INPPS equ 0EADh ;# 
# 2996 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADACTPPS equ 0EAEh ;# 
# 3062 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CCP1PPS equ 0EAFh ;# 
# 3128 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CCP2PPS equ 0EB0h ;# 
# 3194 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CWG1PPS equ 0EB1h ;# 
# 3199 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CWGINPPS equ 0EB1h ;# 
# 3404 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
MDCARLPPS equ 0EB2h ;# 
# 3470 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
MDCARHPPS equ 0EB3h ;# 
# 3536 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
MDSRCPPS equ 0EB4h ;# 
# 3602 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RX1PPS equ 0EB5h ;# 
# 3607 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RXPPS equ 0EB5h ;# 
# 3668 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CK1PPS equ 0EB6h ;# 
# 3673 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TX1PPS equ 0EB6h ;# 
# 3677 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CKPPS equ 0EB6h ;# 
# 3681 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TXPPS equ 0EB6h ;# 
# 3794 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP1CLKPPS equ 0EB7h ;# 
# 3799 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSPCLKPPS equ 0EB7h ;# 
# 3860 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP1DATPPS equ 0EB8h ;# 
# 3865 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSPDATPPS equ 0EB8h ;# 
# 3926 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP1SSPPS equ 0EB9h ;# 
# 3931 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSPSSPPS equ 0EB9h ;# 
# 3992 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IPR0 equ 0EBAh ;# 
# 4037 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IPR1 equ 0EBBh ;# 
# 4085 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IPR2 equ 0EBCh ;# 
# 4133 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IPR3 equ 0EBDh ;# 
# 4211 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IPR4 equ 0EBEh ;# 
# 4269 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IPR5 equ 0EBFh ;# 
# 4315 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IPR6 equ 0EC0h ;# 
# 4341 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IPR7 equ 0EC1h ;# 
# 4388 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIE0 equ 0EC2h ;# 
# 4433 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIE1 equ 0EC3h ;# 
# 4481 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIE2 equ 0EC4h ;# 
# 4529 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIE3 equ 0EC5h ;# 
# 4639 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIE4 equ 0EC6h ;# 
# 4689 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIE5 equ 0EC7h ;# 
# 4721 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIE6 equ 0EC8h ;# 
# 4747 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIE7 equ 0EC9h ;# 
# 4794 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIR0 equ 0ECAh ;# 
# 4839 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIR1 equ 0ECBh ;# 
# 4887 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIR2 equ 0ECCh ;# 
# 4935 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIR3 equ 0ECDh ;# 
# 5013 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIR4 equ 0ECEh ;# 
# 5063 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIR5 equ 0ECFh ;# 
# 5095 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIR6 equ 0ED0h ;# 
# 5121 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PIR7 equ 0ED1h ;# 
# 5168 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
WDTCON0 equ 0ED2h ;# 
# 5243 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
WDTCON1 equ 0ED3h ;# 
# 5337 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
WDTPSL equ 0ED4h ;# 
# 5465 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
WDTPSH equ 0ED5h ;# 
# 5593 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
WDTTMR equ 0ED6h ;# 
# 5681 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CPUDOZE equ 0ED7h ;# 
# 5746 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
OSCCON1 equ 0ED8h ;# 
# 5816 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
OSCCON2 equ 0ED9h ;# 
# 5886 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
OSCCON3 equ 0EDAh ;# 
# 5926 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
OSCSTAT equ 0EDBh ;# 
# 5931 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
OSCSTAT1 equ 0EDBh ;# 
# 6038 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
OSCEN equ 0EDCh ;# 
# 6089 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
OSCTUNE equ 0EDDh ;# 
# 6147 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
OSCFRQ equ 0EDEh ;# 
# 6193 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
VREGCON equ 0EDFh ;# 
# 6227 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
BORCON equ 0EE0h ;# 
# 6254 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PMD0 equ 0EE1h ;# 
# 6331 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PMD1 equ 0EE2h ;# 
# 6395 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PMD2 equ 0EE3h ;# 
# 6440 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PMD3 equ 0EE4h ;# 
# 6478 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PMD4 equ 0EE5h ;# 
# 6531 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PMD5 equ 0EE6h ;# 
# 6551 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RA0PPS equ 0EE7h ;# 
# 6595 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RA1PPS equ 0EE8h ;# 
# 6639 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RA2PPS equ 0EE9h ;# 
# 6683 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RA3PPS equ 0EEAh ;# 
# 6727 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RA4PPS equ 0EEBh ;# 
# 6771 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RA5PPS equ 0EECh ;# 
# 6815 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RA6PPS equ 0EEDh ;# 
# 6859 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RA7PPS equ 0EEEh ;# 
# 6903 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RB0PPS equ 0EEFh ;# 
# 6947 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RB1PPS equ 0EF0h ;# 
# 6991 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RB2PPS equ 0EF1h ;# 
# 7035 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RB3PPS equ 0EF2h ;# 
# 7079 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RB4PPS equ 0EF3h ;# 
# 7123 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RB5PPS equ 0EF4h ;# 
# 7167 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RB6PPS equ 0EF5h ;# 
# 7211 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RB7PPS equ 0EF6h ;# 
# 7255 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RC0PPS equ 0EF7h ;# 
# 7299 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RC1PPS equ 0EF8h ;# 
# 7343 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RC2PPS equ 0EF9h ;# 
# 7387 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RC3PPS equ 0EFAh ;# 
# 7431 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RC4PPS equ 0EFBh ;# 
# 7475 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RC5PPS equ 0EFCh ;# 
# 7519 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RC6PPS equ 0EFDh ;# 
# 7563 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RC7PPS equ 0EFEh ;# 
# 7607 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RD0PPS equ 0EFFh ;# 
# 7651 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RD1PPS equ 0F00h ;# 
# 7695 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RD2PPS equ 0F01h ;# 
# 7739 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RD3PPS equ 0F02h ;# 
# 7783 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RD4PPS equ 0F03h ;# 
# 7827 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RD5PPS equ 0F04h ;# 
# 7871 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RD6PPS equ 0F05h ;# 
# 7915 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RD7PPS equ 0F06h ;# 
# 7959 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RE0PPS equ 0F07h ;# 
# 8003 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RE1PPS equ 0F08h ;# 
# 8047 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RE2PPS equ 0F09h ;# 
# 8091 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IOCAF equ 0F0Ah ;# 
# 8153 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IOCAN equ 0F0Bh ;# 
# 8215 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IOCAP equ 0F0Ch ;# 
# 8277 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
INLVLA equ 0F0Dh ;# 
# 8339 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SLRCONA equ 0F0Eh ;# 
# 8401 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ODCONA equ 0F0Fh ;# 
# 8463 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
WPUA equ 0F10h ;# 
# 8525 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ANSELA equ 0F11h ;# 
# 8587 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IOCBF equ 0F12h ;# 
# 8649 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IOCBN equ 0F13h ;# 
# 8711 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IOCBP equ 0F14h ;# 
# 8773 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
INLVLB equ 0F15h ;# 
# 8835 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SLRCONB equ 0F16h ;# 
# 8897 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ODCONB equ 0F17h ;# 
# 8959 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
WPUB equ 0F18h ;# 
# 9021 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ANSELB equ 0F19h ;# 
# 9083 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IOCCF equ 0F1Ah ;# 
# 9145 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IOCCN equ 0F1Bh ;# 
# 9207 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IOCCP equ 0F1Ch ;# 
# 9269 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
INLVLC equ 0F1Dh ;# 
# 9331 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SLRCONC equ 0F1Eh ;# 
# 9393 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ODCONC equ 0F1Fh ;# 
# 9455 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
WPUC equ 0F20h ;# 
# 9517 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ANSELC equ 0F21h ;# 
# 9579 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
INLVLD equ 0F22h ;# 
# 9641 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SLRCOND equ 0F23h ;# 
# 9703 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ODCOND equ 0F24h ;# 
# 9765 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
WPUD equ 0F25h ;# 
# 9827 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ANSELD equ 0F26h ;# 
# 9889 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IOCEF equ 0F27h ;# 
# 9910 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IOCEN equ 0F28h ;# 
# 9931 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
IOCEP equ 0F29h ;# 
# 9952 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
INLVLE equ 0F2Ah ;# 
# 9990 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SLRCONE equ 0F2Bh ;# 
# 10022 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ODCONE equ 0F2Ch ;# 
# 10054 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
WPUE equ 0F2Dh ;# 
# 10092 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ANSELE equ 0F2Eh ;# 
# 10124 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
HLVDCON0 equ 0F2Fh ;# 
# 10204 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
HLVDCON1 equ 0F30h ;# 
# 10276 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
FVRCON equ 0F31h ;# 
# 10365 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ZCDCON equ 0F32h ;# 
# 10445 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
DAC1CON0 equ 0F33h ;# 
# 10546 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
DAC1CON1 equ 0F34h ;# 
# 10598 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CM2CON0 equ 0F35h ;# 
# 10678 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CM2CON1 equ 0F36h ;# 
# 10718 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CM2NCH equ 0F37h ;# 
# 10778 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CM2PCH equ 0F38h ;# 
# 10838 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CM1CON0 equ 0F39h ;# 
# 10918 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CM1CON1 equ 0F3Ah ;# 
# 10958 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CM1NCH equ 0F3Bh ;# 
# 11018 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CM1PCH equ 0F3Ch ;# 
# 11078 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CMOUT equ 0F3Dh ;# 
# 11104 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CLKRCON equ 0F3Eh ;# 
# 11208 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CLKRCLK equ 0F3Fh ;# 
# 11268 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CWG1CLK equ 0F40h ;# 
# 11273 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CWG1CLKCON equ 0F40h ;# 
# 11322 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CWG1ISM equ 0F41h ;# 
# 11368 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CWG1DBR equ 0F42h ;# 
# 11472 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CWG1DBF equ 0F43h ;# 
# 11576 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CWG1CON0 equ 0F44h ;# 
# 11677 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CWG1CON1 equ 0F45h ;# 
# 11755 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CWG1AS0 equ 0F46h ;# 
# 11875 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CWG1AS1 equ 0F47h ;# 
# 11925 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CWG1STR equ 0F48h ;# 
# 12039 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SCANLADR equ 0F49h ;# 
# 12046 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SCANLADRL equ 0F49h ;# 
# 12174 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SCANLADRH equ 0F4Ah ;# 
# 12302 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SCANLADRU equ 0F4Bh ;# 
# 12408 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SCANHADR equ 0F4Ch ;# 
# 12415 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SCANHADRL equ 0F4Ch ;# 
# 12543 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SCANHADRH equ 0F4Dh ;# 
# 12671 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SCANHADRU equ 0F4Eh ;# 
# 12775 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SCANCON0 equ 0F4Fh ;# 
# 12902 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SCANTRIG equ 0F50h ;# 
# 12982 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
MDCON0 equ 0F51h ;# 
# 13050 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
MDCON1 equ 0F52h ;# 
# 13116 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
MDSRC equ 0F53h ;# 
# 13196 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
MDCARL equ 0F54h ;# 
# 13264 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
MDCARH equ 0F55h ;# 
# 13332 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADACT equ 0F56h ;# 
# 13384 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADCLK equ 0F57h ;# 
# 13442 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADREF equ 0F58h ;# 
# 13483 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADCON1 equ 0F59h ;# 
# 13522 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADCON2 equ 0F5Ah ;# 
# 13599 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADCON3 equ 0F5Bh ;# 
# 13670 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADACQ equ 0F5Ch ;# 
# 13740 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADCAP equ 0F5Dh ;# 
# 13792 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADPRE equ 0F5Eh ;# 
# 13862 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADPCH equ 0F5Fh ;# 
# 13920 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADCON0 equ 0F60h ;# 
# 14015 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADPREV equ 0F61h ;# 
# 14022 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADPREVL equ 0F61h ;# 
# 14092 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADPREVH equ 0F62h ;# 
# 14162 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADRES equ 0F63h ;# 
# 14169 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADRESL equ 0F63h ;# 
# 14239 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADRESH equ 0F64h ;# 
# 14301 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADSTAT equ 0F65h ;# 
# 14366 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADRPT equ 0F66h ;# 
# 14436 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADCNT equ 0F67h ;# 
# 14506 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADSTPT equ 0F68h ;# 
# 14513 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADSTPTL equ 0F68h ;# 
# 14583 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADSTPTH equ 0F69h ;# 
# 14653 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADLTH equ 0F6Ah ;# 
# 14660 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADLTHL equ 0F6Ah ;# 
# 14730 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADLTHH equ 0F6Bh ;# 
# 14800 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADUTH equ 0F6Ch ;# 
# 14807 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADUTHL equ 0F6Ch ;# 
# 14877 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADUTHH equ 0F6Dh ;# 
# 14947 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADERR equ 0F6Eh ;# 
# 14954 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADERRL equ 0F6Eh ;# 
# 15024 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADERRH equ 0F6Fh ;# 
# 15094 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADACC equ 0F70h ;# 
# 15101 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADACCL equ 0F70h ;# 
# 15171 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADACCH equ 0F71h ;# 
# 15241 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADFLTR equ 0F72h ;# 
# 15248 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADFLTRL equ 0F72h ;# 
# 15318 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
ADFLTRH equ 0F73h ;# 
# 15388 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCDATA equ 0F74h ;# 
# 15395 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCDATL equ 0F74h ;# 
# 15457 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCDATH equ 0F75h ;# 
# 15519 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCACC equ 0F76h ;# 
# 15526 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCACCL equ 0F76h ;# 
# 15588 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCACCH equ 0F77h ;# 
# 15650 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCSHFT equ 0F78h ;# 
# 15657 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCSHIFTL equ 0F78h ;# 
# 15719 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCSHIFTH equ 0F79h ;# 
# 15781 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCXOR equ 0F7Ah ;# 
# 15788 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCXORL equ 0F7Ah ;# 
# 15845 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCXORH equ 0F7Bh ;# 
# 15907 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCCON0 equ 0F7Ch ;# 
# 15967 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CRCCON1 equ 0F7Dh ;# 
# 16043 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
NVMADR equ 0F7Eh ;# 
# 16050 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
NVMADRL equ 0F7Eh ;# 
# 16178 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
NVMADRH equ 0F7Fh ;# 
# 16234 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
NVMDAT equ 0F80h ;# 
# 16304 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
NVMCON1 equ 0F81h ;# 
# 16370 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
NVMCON2 equ 0F82h ;# 
# 16390 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
LATA equ 0F83h ;# 
# 16502 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
LATB equ 0F84h ;# 
# 16614 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
LATC equ 0F85h ;# 
# 16726 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
LATD equ 0F86h ;# 
# 16838 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
LATE equ 0F87h ;# 
# 16935 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TRISA equ 0F88h ;# 
# 16940 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
DDRA equ 0F88h ;# 
# 17057 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TRISB equ 0F89h ;# 
# 17062 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
DDRB equ 0F89h ;# 
# 17179 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TRISC equ 0F8Ah ;# 
# 17184 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
DDRC equ 0F8Ah ;# 
# 17301 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TRISD equ 0F8Bh ;# 
# 17306 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
DDRD equ 0F8Bh ;# 
# 17423 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TRISE equ 0F8Ch ;# 
# 17428 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
DDRE equ 0F8Ch ;# 
# 17485 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PORTA equ 0F8Dh ;# 
# 17569 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PORTB equ 0F8Eh ;# 
# 17640 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PORTC equ 0F8Fh ;# 
# 17726 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PORTD equ 0F90h ;# 
# 17797 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PORTE equ 0F91h ;# 
# 18004 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP1BUF equ 0F92h ;# 
# 18024 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP1ADD equ 0F93h ;# 
# 18144 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP1MSK equ 0F94h ;# 
# 18214 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP1STAT equ 0F95h ;# 
# 18668 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP1CON1 equ 0F96h ;# 
# 18788 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP1CON2 equ 0F97h ;# 
# 18975 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SSP1CON3 equ 0F98h ;# 
# 19037 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RC1REG equ 0F99h ;# 
# 19042 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RCREG equ 0F99h ;# 
# 19046 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RCREG1 equ 0F99h ;# 
# 19091 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TX1REG equ 0F9Ah ;# 
# 19096 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TXREG1 equ 0F9Ah ;# 
# 19100 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TXREG equ 0F9Ah ;# 
# 19145 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SP1BRG equ 0F9Bh ;# 
# 19152 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SP1BRGL equ 0F9Bh ;# 
# 19157 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SPBRG equ 0F9Bh ;# 
# 19161 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SPBRG1 equ 0F9Bh ;# 
# 19165 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SPBRGL equ 0F9Bh ;# 
# 19222 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SP1BRGH equ 0F9Ch ;# 
# 19227 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SPBRGH equ 0F9Ch ;# 
# 19231 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
SPBRGH1 equ 0F9Ch ;# 
# 19276 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RC1STA equ 0F9Dh ;# 
# 19281 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RCSTA1 equ 0F9Dh ;# 
# 19285 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
RCSTA equ 0F9Dh ;# 
# 19561 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TX1STA equ 0F9Eh ;# 
# 19566 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TXSTA1 equ 0F9Eh ;# 
# 19570 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TXSTA equ 0F9Eh ;# 
# 20005 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
BAUD1CON equ 0F9Fh ;# 
# 20010 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
BAUDCON1 equ 0F9Fh ;# 
# 20014 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
BAUDCTL1 equ 0F9Fh ;# 
# 20018 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
BAUDCON equ 0F9Fh ;# 
# 20022 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
BAUDCTL equ 0F9Fh ;# 
# 20786 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PWM4DC equ 0FA0h ;# 
# 20793 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PWM4DCL equ 0FA0h ;# 
# 20859 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PWM4DCH equ 0FA1h ;# 
# 21029 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PWM4CON equ 0FA2h ;# 
# 21085 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PWM3DC equ 0FA3h ;# 
# 21092 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PWM3DCL equ 0FA3h ;# 
# 21158 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PWM3DCH equ 0FA4h ;# 
# 21328 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PWM3CON equ 0FA5h ;# 
# 21384 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CCPR2 equ 0FA6h ;# 
# 21391 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CCPR2L equ 0FA6h ;# 
# 21411 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CCPR2H equ 0FA7h ;# 
# 21431 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CCP2CON equ 0FA8h ;# 
# 21549 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CCP2CAP equ 0FA9h ;# 
# 21605 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CCPR1 equ 0FAAh ;# 
# 21612 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CCPR1L equ 0FAAh ;# 
# 21632 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CCPR1H equ 0FABh ;# 
# 21652 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CCP1CON equ 0FACh ;# 
# 21779 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CCP1CAP equ 0FADh ;# 
# 21835 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
CCPTMRS equ 0FAEh ;# 
# 21923 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T6TMR equ 0FAFh ;# 
# 21928 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR6 equ 0FAFh ;# 
# 21961 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T6PR equ 0FB0h ;# 
# 21966 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PR6 equ 0FB0h ;# 
# 21999 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T6CON equ 0FB1h ;# 
# 22145 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T6HLT equ 0FB2h ;# 
# 22273 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T6CLKCON equ 0FB3h ;# 
# 22278 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T6CLK equ 0FB3h ;# 
# 22431 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T6RST equ 0FB4h ;# 
# 22511 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T4TMR equ 0FB5h ;# 
# 22516 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR4 equ 0FB5h ;# 
# 22549 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T4PR equ 0FB6h ;# 
# 22554 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PR4 equ 0FB6h ;# 
# 22587 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T4CON equ 0FB7h ;# 
# 22733 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T4HLT equ 0FB8h ;# 
# 22861 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T4CLKCON equ 0FB9h ;# 
# 22866 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T4CLK equ 0FB9h ;# 
# 23019 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T4RST equ 0FBAh ;# 
# 23099 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T2TMR equ 0FBBh ;# 
# 23104 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR2 equ 0FBBh ;# 
# 23137 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T2PR equ 0FBCh ;# 
# 23142 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PR2 equ 0FBCh ;# 
# 23175 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T2CON equ 0FBDh ;# 
# 23321 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T2HLT equ 0FBEh ;# 
# 23449 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T2CLKCON equ 0FBFh ;# 
# 23454 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T2CLK equ 0FBFh ;# 
# 23607 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T2RST equ 0FC0h ;# 
# 23687 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR5 equ 0FC1h ;# 
# 23694 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR5L equ 0FC1h ;# 
# 23864 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR5H equ 0FC2h ;# 
# 23984 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T5CON equ 0FC3h ;# 
# 24098 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T5GCON equ 0FC4h ;# 
# 24103 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PR5 equ 0FC4h ;# 
# 24330 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T5GATE equ 0FC5h ;# 
# 24335 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR5GATE equ 0FC5h ;# 
# 24472 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T5CLK equ 0FC6h ;# 
# 24477 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR5CLK equ 0FC6h ;# 
# 24614 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR3 equ 0FC7h ;# 
# 24621 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR3L equ 0FC7h ;# 
# 24791 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR3H equ 0FC8h ;# 
# 24911 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T3CON equ 0FC9h ;# 
# 25025 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T3GCON equ 0FCAh ;# 
# 25030 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PR3 equ 0FCAh ;# 
# 25257 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T3GATE equ 0FCBh ;# 
# 25262 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR3GATE equ 0FCBh ;# 
# 25399 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T3CLK equ 0FCCh ;# 
# 25404 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR3CLK equ 0FCCh ;# 
# 25541 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR1 equ 0FCDh ;# 
# 25548 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR1L equ 0FCDh ;# 
# 25718 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR1H equ 0FCEh ;# 
# 25838 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T1CON equ 0FCFh ;# 
# 25952 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T1GCON equ 0FD0h ;# 
# 25957 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PR1 equ 0FD0h ;# 
# 26184 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T1GATE equ 0FD1h ;# 
# 26189 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR1GATE equ 0FD1h ;# 
# 26326 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T1CLK equ 0FD2h ;# 
# 26331 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR1CLK equ 0FD2h ;# 
# 26468 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR0L equ 0FD3h ;# 
# 26473 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR0 equ 0FD3h ;# 
# 26606 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TMR0H equ 0FD4h ;# 
# 26611 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PR0 equ 0FD4h ;# 
# 26860 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T0CON0 equ 0FD5h ;# 
# 26925 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
T0CON1 equ 0FD6h ;# 
# 27036 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PCON0 equ 0FD7h ;# 
# 27189 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
STATUS equ 0FD8h ;# 
# 27305 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
FSR2 equ 0FD9h ;# 
# 27312 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
FSR2L equ 0FD9h ;# 
# 27332 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
FSR2H equ 0FDAh ;# 
# 27339 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PLUSW2 equ 0FDBh ;# 
# 27359 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PREINC2 equ 0FDCh ;# 
# 27379 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
POSTDEC2 equ 0FDDh ;# 
# 27399 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
POSTINC2 equ 0FDEh ;# 
# 27419 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
INDF2 equ 0FDFh ;# 
# 27439 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
BSR equ 0FE0h ;# 
# 27446 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
FSR1 equ 0FE1h ;# 
# 27453 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
FSR1L equ 0FE1h ;# 
# 27473 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
FSR1H equ 0FE2h ;# 
# 27480 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PLUSW1 equ 0FE3h ;# 
# 27500 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PREINC1 equ 0FE4h ;# 
# 27520 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
POSTDEC1 equ 0FE5h ;# 
# 27540 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
POSTINC1 equ 0FE6h ;# 
# 27560 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
INDF1 equ 0FE7h ;# 
# 27580 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
WREG equ 0FE8h ;# 
# 27618 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
FSR0 equ 0FE9h ;# 
# 27625 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
FSR0L equ 0FE9h ;# 
# 27645 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
FSR0H equ 0FEAh ;# 
# 27652 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PLUSW0 equ 0FEBh ;# 
# 27672 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PREINC0 equ 0FECh ;# 
# 27692 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
POSTDEC0 equ 0FEDh ;# 
# 27712 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
POSTINC0 equ 0FEEh ;# 
# 27732 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
INDF0 equ 0FEFh ;# 
# 27752 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
INTCON equ 0FF2h ;# 
# 27833 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PROD equ 0FF3h ;# 
# 27840 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PRODL equ 0FF3h ;# 
# 27860 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PRODH equ 0FF4h ;# 
# 27880 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TABLAT equ 0FF5h ;# 
# 27902 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TBLPTR equ 0FF6h ;# 
# 27909 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TBLPTRL equ 0FF6h ;# 
# 27929 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TBLPTRH equ 0FF7h ;# 
# 27949 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TBLPTRU equ 0FF8h ;# 
# 27980 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PCLAT equ 0FF9h ;# 
# 27987 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PC equ 0FF9h ;# 
# 27994 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PCL equ 0FF9h ;# 
# 28014 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PCLATH equ 0FFAh ;# 
# 28034 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
PCLATU equ 0FFBh ;# 
# 28054 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
STKPTR equ 0FFCh ;# 
# 28152 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TOS equ 0FFDh ;# 
# 28159 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TOSL equ 0FFDh ;# 
# 28179 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TOSH equ 0FFEh ;# 
# 28199 "/usr/share/microchip/xc8/v2.32/pic/include/proc/pic18f47k40.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNROOT	_main
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"build/main.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      0       0
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14          136      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMRAM           5F      0       0       0        0.0%
;!EEDATA             400      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMRAM              5F      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!DATA                 0      0       0       3        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!ABS                  0      0       0       6        0.0%
;!BITBANK1           100      0       0       7        0.0%
;!BANK1              100      0       0       8        0.0%
;!BITBANK2           100      0       0       9        0.0%
;!BANK2              100      0       0      10        0.0%
;!BITBANK3           100      0       0      11        0.0%
;!BANK3              100      0       0      12        0.0%
;!BITBANK4           100      0       0      13        0.0%
;!BANK4              100      0       0      14        0.0%
;!BITBANK5           100      0       0      15        0.0%
;!BANK5              100      0       0      16        0.0%
;!BITBANK6           100      0       0      17        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBANK8           100      0       0      21        0.0%
;!BANK8              100      0       0      22        0.0%
;!BITBANK9           100      0       0      23        0.0%
;!BANK9              100      0       0      24        0.0%
;!BITBANK10          100      0       0      25        0.0%
;!BANK10             100      0       0      26        0.0%
;!BITBANK11          100      0       0      27        0.0%
;!BANK11             100      0       0      28        0.0%
;!BITBANK12          100      0       0      29        0.0%
;!BANK12             100      0       0      30        0.0%
;!BITBANK13          100      0       0      31        0.0%
;!BANK13             100      0       0      32        0.0%
;!BITBANK14           88      0       0      33        0.0%
;!BANK14              88      0       0      34        0.0%
;!BIGRAM             E87      0       0      35        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 3 in file "src/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"src/main.c"
	line	3
global __ptext0
__ptext0:
psect	text0
	file	"src/main.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	callstack 31
	line	5
	
l753:
	line	6
	
l5:
	global	start
	goto	start
	callstack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
