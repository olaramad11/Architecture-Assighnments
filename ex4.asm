.586
.MODEL FLAT

INCLUDE io.h		 

.STACK 4096

.DATA
pennies DWORD   ?
nickels DWORD   ?
dimes DWORD   ?
quarters DWORD   ?
fiftycent DWORD ?
dolars DWORD ?
prompt1 BYTE	"How many pennies do you have?", 0
prompt2 BYTE	"How many nickels do you have?", 0
prompt3 BYTE	"How many dimes do you have?", 0
prompt4 BYTE	"How many quarters do you have?", 0
prompt5 BYTE	"How many fiftycent do you have?", 0
prompt6 BYTE	"How many dolars do you have?", 0

string  BYTE	40 DUP (?)
res1 BYTE  "total number of dolars", 0
res2 BYTE  "total number of pennies", 0
result	 BYTE	11 DUP (?), 0
result2	 BYTE	11 DUP (?), 0

.CODE
_MainProc PROC
		input   prompt1, string, 40               
		atod	string			                 
		mov	 pennies, eax	                

		input   prompt2, string, 40;            
		atod	string
		mov	 nickels, eax
		
		input   prompt3, string, 40          
		atod	string			                 
		mov	 dimes, eax		                   

		input   prompt4, string, 40
		atod	string
		mov	 quarters, eax

		input   prompt5, string, 40
		atod	string
		mov	 fiftycent, eax



		input   prompt6 string, 40
		atod	string
		mov	 dolars, eax
		
				
				mov eax,nickels
                imul eax,5
				mov nickels,eax
				

				mov eax,dimes
				imul eax,10
                mov dimes,eax 

				mov eax,quarters
                imul eax,25
				mov quarters,eax

				mov eax,fiftycent
                imul eax,50
				mov fiftycent,eax

				mov eax,dolars
                imul eax,100
				
				add eax,pennies
				add eax,nickels
				add eax,dimes
				add eax,quarters
				add eax,fiftycent

				mov ebx,100
				cdq
				idiv ebx

				

				dtoa result,eax
				output res1,result

				dtoa result2,edx
				output res2,result2
				
					
mov eax,0
ret
_MainProc ENDP
END         