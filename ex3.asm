;(2*length+ 2*width)

.586
.MODEL FLAT
INCLUDE io.h           
.STACK 4096
.DATA	
      
	 num1 Dword ?
	 num2 Dword ?
	 temp Dword ?

     promote1 Byte "Enter the width",0
     promote2 Byte "Enter the length",0
     
     value Byte 20 Dup(?)

   prin Byte "the result is ",0
    res Byte 11 Dup(?),0



.CODE
MainProc PROC
           input    promote1,value,20
           atod      value
           mov       num1,eax
          input     promote2,value,20
          atod      value
          mov       num2,eax
         
		 mov eax,num1
		 imul eax,2
		 mov  temp,eax

		 mov  eax,num2
		 imul eax,2

		 add eax,temp
         dtoa      res,eax
        output    prin,res

mov eax,0
ret 
MainProc ENDp
end


