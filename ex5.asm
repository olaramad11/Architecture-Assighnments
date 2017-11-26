
.586
.MODEL FLAT
INCLUDE io.h           
.STACK 4096
.DATA	
      
	 num1 Dword ?
	 num2 Dword ?
	 num3 Dword ?
	 num4 dword ?
	
     prompt1 Byte "Enter the first number",0
     prompt2 Byte "Enter the second number",0
	 prompt3 Byte "Enter the third number",0
	 prompt4 Byte "Enter the fourth number",0
     
     inp Byte 40 Dup(?)
	 res Byte 40 Dup(?) 
	
	 
	 aver byte "the average is",0
	 summ Byte "the sum is ",0
   



.CODE
MainProc PROC
     input prompt1,inp,40
     atod inp
     mov num1,eax

     input prompt2,inp,40
     atod inp
     mov num2,eax

     input prompt3,inp,40
     atod inp
     mov num3,eax

     input prompt4,inp,40
     atod inp
     mov num4,eax

     mov eax,num1
     add eax,num2
     add eax,num3
     add eax,num4

     dtoa res,eax
     output summ,res



	 ;average
		; mov bx,3
		;div  bx
		;dtoa avg,eax
		;output  prin,avg

mov eax,0
ret 
MainProc ENDp
end


