#as:
#objdump: -drw
#name: i386 32bit displacement

.*: +file format .*


Disassembly of section .text:

0+ <foo-0x26>:
[ 	]*[a-f0-9]+:	8b 18                	mov    \(%eax\),%ebx
[ 	]*[a-f0-9]+:	8b 58 03             	mov    0x3\(%eax\),%ebx
[ 	]*[a-f0-9]+:	8b 58 00             	mov    0x0\(%eax\),%ebx
[ 	]*[a-f0-9]+:	8b 58 03             	mov    0x3\(%eax\),%ebx
[ 	]*[a-f0-9]+:	8b 98 ff 0f 00 00    	mov    0xfff\(%eax\),%ebx
[ 	]*[a-f0-9]+:	8b 98 00 00 00 00    	mov    0x0\(%eax\),%ebx
[ 	]*[a-f0-9]+:	8b 98 03 00 00 00    	mov    0x3\(%eax\),%ebx
[ 	]*[a-f0-9]+:	eb 07                	jmp    26 <foo>
[ 	]*[a-f0-9]+:	eb 05                	jmp    26 <foo>
[ 	]*[a-f0-9]+:	e9 00 00 00 00       	jmp    26 <foo>

0+26 <foo>:
[ 	]*[a-f0-9]+:	89 18                	mov    %ebx,\(%eax\)
[ 	]*[a-f0-9]+:	89 58 03             	mov    %ebx,0x3\(%eax\)
[ 	]*[a-f0-9]+:	89 98 ff 0f 00 00    	mov    %ebx,0xfff\(%eax\)
[ 	]*[a-f0-9]+:	89 58 00             	mov    %ebx,0x0\(%eax\)
[ 	]*[a-f0-9]+:	89 58 03             	mov    %ebx,0x3\(%eax\)
[ 	]*[a-f0-9]+:	89 98 00 00 00 00    	mov    %ebx,0x0\(%eax\)
[ 	]*[a-f0-9]+:	89 98 03 00 00 00    	mov    %ebx,0x3\(%eax\)
#pass
