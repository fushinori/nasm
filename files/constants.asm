SYS_WRITE equ 1
SYS_OPEN  equ 2
SYS_CLOSE equ 3


; Flags for SYS_OPEN
O_ACCMODE    equ 0q00000003
O_RDONLY     equ 0q00000000
O_WRONLY     equ 0q00000001
O_RDWR       equ 0q00000002
O_CREAT      equ 0q00000100
O_EXCL       equ 0q00000200
O_NOCTTY     equ 0q00000400
O_TRUNC      equ 0q00001000
O_APPEND     equ 0q00002000
O_NONBLOCK   equ 0q00004000
O_DSYNC      equ 0q00010000
O_DIRECT     equ 0q00040000
O_LARGEFILE  equ 0q00100000
O_DIRECTORY  equ 0q00200000
O_NOFOLLOW   equ 0q00400000
O_NOATIME    equ 0q01000000
O_CLOEXEC    equ 0q02000000
