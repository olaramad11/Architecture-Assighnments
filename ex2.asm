;2(x+y) + z
.586
.MODEL FLAT
INCLUDE io.h           
.STACK 4096
.DATA	
      
	 num1 Dword ?
	 num2 Dword ?
	 num3 Dword ?
	

     promote1 Byte "Enter the first number",0
     promote2 Byte "Enter the second number",0
     promote3 Byte "Enter the third number",0


    value Byte 20 Dup(?)

    prin Byte "the result is ",0
   res Byte 11 Dup(?),0
	 avg Byte 11 Dup(?),0


.CODE
_MainProc PROC
           input    promote1,value,20
           atod      value
           mov       num1,eax
          input     promote2,value,20
          atod      value
          mov       num2,eax
         input    promote3,value,20
         atod      value
         mov       num3,eax

		
		 mov   eax ,num1
		 add   eax,num2
		 imul  eax,2
		 add   eax,num3
		 dtoa sum,eax
	
		
        output    prin,res
		
	   
mov eax,0
ret 
_MainProc ENDP
end


