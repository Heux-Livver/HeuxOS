
%include "kernel.asm" ;write kernel location here

jmp $
	
times 510-($-$$) db 0
dw 0xaa55