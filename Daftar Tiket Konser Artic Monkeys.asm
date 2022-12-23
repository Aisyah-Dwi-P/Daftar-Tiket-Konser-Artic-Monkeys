.model small
.code
org 100h
start:
         jmp mulai
nama         db 13,10,'Nama Anda   : $'
hp           db 13,10,'No.HP/Telp  : $'
lanjut       db 13,10,'lanjut Tekan y untuk lanjut >>>>>>>>> $'
tampung_nama   db 30,?,30 dup(?)
tampung_hp     db 13,?,13 dup(?)   
masukkan  db 13,10,'Silahkan Masukkan No/Kode Emas yang Anda pilih: $'
      
daftar db 13,10,'+---------------------------------------------+'
       db 13,10,'|      DAFTAR TIKET KONSER ARTIC MONKEYS      |'
       db 13,10,'+---------------------------------------------+'
       db 13,10,'|NO | NAMA   | HARGA                          |'
       db 13,10,'+---------------------------------------------+'
       db 13,10,'|1 | CAT 5A  | RP.1.560.000                   |'
       db 13,10,'+---------------------------------------------+'
       db 13,10,'|2 | CAT 5B  | RP.1.560.000                   |'
       db 13,10,'+---------------------------------------------+'
       db 13,10,'|3 | CAT 5C  | RP.1.560.000                   |'
       db 13,10,'+---------------------------------------------+'
       db 13,10,'|4 | CAT 4A  | RP.2.760.000                   |'
       db 13,10,'+---------------------------------------------+'
       db 13,10,'|5 | CAT 4B  | RP.2.760.000                   |'
       db 13,10,'+---------------------------------------------+'
       db 13,10,'|6 | CAT 4C  | RP.2.760.000                   |'
       db 13,10,'+---------------------------------------------+'
       db 13,10,'|7 | CAT 1   | RP.3.180.000                   |'
       db 13,10,'+---------------------------------------------+'
       db 13,10,'|8 | CAT 2   | RP.3.600.000                   |'
       db 13,10,'+---------------------------------------------+'
       db 13,10,'|9 | CAT 3   | RP.4.320.000                   |'
       db 13,10,'+---------------------------------------------+','$'
    mulai:
        mov ah,09h
        lea dx,nama
        int 21h
        mov ah,0ah
        lea dx,tampung_nama
        int 21h
        push dx  
        
        mov ah,09h
        lea dx,hp
        int 21h
        mov ah,0ah
        lea dx,tampung_hp
        int 21h
        push dx
       mov ah,09h
	 mov dx,offset daftar
	 int 21h
	 mov ah,09h
	 mov dx,offset lanjut
	 int 21h
	 mov ah,01h
	 int 21h
	 cmp al,'y'
	 jmp proses
	 jne error_msg
error_msg:
        mov ah,09h
        mov dx,offset error_msg
        int 21h
        int 20h
proses:
        mov ah,09h
        mov dx,offset masukkan
        int 21h
        mov ah,01
        int 21h
        mov bh,al
       
       
        cmp al,'1'
        je hasil1
        
        cmp al,'2'
        je hasil2
        
        cmp al,'3'
        je hasil3
        
        cmp al,'4'
        je hasil4
        
        cmp al,'5'
        je hasil5 
        
        cmp al,'6'
        je hasil6 
        
        cmp al,'7'
        je hasil7
        
        cmp al,'8'
        je hasil8
        
        cmp al,'9'
        je hasil9 
        
hasil1:
	mov ah,09h
	lea dx,teks1
	int 21h
	int 20h
hasil2:
	mov ah,09h
	lea dx,teks2
	int 21h
	int 20h
hasil3:
	mov ah,09h
	lea dx,teks3
	int 21h
	int 20h
	
hasil4:
	mov ah,09h
	lea dx,teks4
	int 21h
	int 20h  
hasil5:
	mov ah,09h
	lea dx,teks5
	int 21h
	int 20h 
hasil6:
	mov ah,09h
	lea dx,teks6
	int 21h
	int 20h
hasil7:
	mov ah,09h
	lea dx,teks7
	int 21h
	int 20h
hasil8:
	mov ah,09h
	lea dx,teks8
	int 21h
	int 20h
hasil9:
	mov ah,09h
	lea dx,teks9
	int 21h
	int 20h
       
;-----------------------------------------------------------------------------------------
teks1  db 13,10,'Anda memilih TIKET CAT 5A'
       db 13,10,'Total Harga Yang Harus Anda Bayar : RP.1.560.000'
       db 13,10,'Terima Kasih $'
teks2  db 13,10,'Anda memilih TIKET CAT 5B'
       db 13,10,'Total Harga Yang Harus Anda Bayar : RP.1.560.000'
       db 13,10,'Terima Kasih $'
teks3  db 13,10,'Anda memilih TIKET CAT 5C'
       db 13,10,'Total Harga Yang Harus Anda Bayar : RP.1.560.000'
       db 13,10,'Terima Kasih $'
teks4  db 13,10,'Anda memilih TIKET CAT 4A'
       db 13,10,'Total Harga Yang Harus Anda Bayar : RP.2.760.000'
       db 13,10,'Terima Kasih $'
teks5  db 13,10,'Anda memilih TIKET CAT 4B'
       db 13,10,'Total Harga Yang Harus Anda Bayar : RP.2.760.000'
       db 13,10,'Terima Kasih $'
teks6  db 13,10,'Anda memilih TIKET CAT 4C'
       db 13,10,'Total Harga Yang Harus Anda Bayar : RP.2.760.000'
       db 13,10,'Terima Kasih $'
teks7  db 13,10,'Anda memilih TIKET CAT 1'
       db 13,10,'Total Harga Yang Harus Anda Bayar : RP.3.180.000'
       db 13,10,'Terima Kasih $'
teks8  db 13,10,'Anda memilih TIKET CAT 2'
       db 13,10,'Total Harga Yang Harus Anda Bayar : RP.3.600.000'
       db 13,10,'Terima Kasih $'
teks9  db 13,10,'Anda memilih TIKET CAT 3'
       db 13,10,'Total Harga Yang Harus Anda Bayar : RP.4.320.000'
       db 13,10,'Terima Kasih $'                     
