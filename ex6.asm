;sum of weihght
;wieghted sum
;wieghted average 

.586
.MODEL FLAT
INCLUDE io.h           
.STACK 4096
.DATA
     grade1 dword ?
     weight1 dword ?
	 	
	grade2 dword ?
	weight2 dword ?

	grade3 dword ?
	weight3 dword ? 

	grade4 dword ? 
	weight4 dword ?

    
	
	weights dword ?
	sum dword ?

	pgrade1 byte "enter grade1 ",0
	pweight1 byte "enter weight1",0

	pgrad2 byte "enter grade2 ",0
	pweight2 byte "enter weight2",0


	pgrad3 byte "enter grade3 ",0
	pweight3 byte "enter weight3",0


	pgrad4 byte "enter grade4 ",0
	pweight4 byte "enter weight4",0
	inp byte 40 dup(?),0

	res byte 40 dup(?),0
	resultsum byte"the sum of weight is",0
	gandw byte"the weighted sum is",0
	
	
  



.CODE
MainProc PROC


           input  pgrad1,inp,40
		   atod  inp
		   mov grade1,eax
		   


		   input  pweight1,inp,40
		   atod inp 
		  mov weight1,eax
		 

			 input  pgrad2,inp,40
		   atod  inp
		 mov grade2,eax

		 
		 
		   input  pweight2,inp,40
		   atod inp 
		   mov weight2,eax
		   



		   input  pgrad3,inp,40
		   atod  inp
		mov grade3,eax
	

		   
		   input  pweight3,inp,40
		   atod inp 
		   mov weight3,eax
		   

		   input  pgrad4,inp,40
		   atod  inp
		   mov grade4,eax
		  
		  
		 
		
		 input  pweight4,inp,40
		  atod inp 
		  mov weight4,eax
		  

          ;sum

		   mov eax,weight1
		   add eax ,weight2
		   add eax,weight3
		   add eax,weight4
		  
		   dtoa res,eax
		   output resultsum,res

		   mov eax,grade1
		   imul eax,weight1

		   mov weights,eax

		   mov eax,grade2
		   imul eax,weight2

		   add eax,weights
		   mov weights,eax
		    mov eax ,grade3
			imul eax,weight3
			add eax ,weights
			mov weights,eax

		    mov eax ,grade4
			imul eax,weight4
			add eax,weights
			dtoa res,eax
			output gandw,res


			;weighted average--
			
			    





		   

        
mov eax,0
ret 
MainProc ENDp
end


