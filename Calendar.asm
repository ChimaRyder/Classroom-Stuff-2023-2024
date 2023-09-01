section .data
  hello:
  db ' -------------------------------------------------------', 10
  db '|', 9, 9, '     SEPTEMBER 2023', 9, 9, 9,  '|', 10
  db ' -------------------------------------------------------', 10
  db '|  SUN', 9, '|  MON', 9, '|  TUE', 9, '|  WED', 9, '|  THU', 9, '|  FRI', 9, '|  SAT', 9, '|', 10
  db ' -------------------------------------------------------', 10
  db '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 10
  db '|  27', 9, '|  28', 9, '|  29', 9, '|  30', 9, '|  31', 9, '|   1', 9, '|   2', 9, '|', 10
  db '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 10
  db ' -------------------------------------------------------', 10
  db '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 10
  db '|   3', 9, '|   4', 9, '|   5', 9, '|   6', 9, '|   7', 9, '|   8', 9, '|   9', 9, '|', 10
  db '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 10
  db ' -------------------------------------------------------', 10
  db '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 10
  db '|  10', 9, '|  11', 9, '|  12', 9, '|  13', 9, '|  14', 9, '|  15', 9, '|  16', 9, '|', 10
  db '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 10
  db ' -------------------------------------------------------', 10
  db '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 10
  db '|  17', 9, '|  18', 9, '|  19', 9, '|  20', 9, '|  21', 9, '|  22', 9, '|  23', 9, '|', 10
  db '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 10
  db ' -------------------------------------------------------', 10
  db '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 10
  db '|  24', 9, '|  25', 9, '|  26', 9, '|  27', 9, '|  28', 9, '|  29', 9, '|  30', 9, '|', 10
  db '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 9, '|', 10
  db ' -------------------------------------------------------', 10
  
  
  
  helloLen: equ $-hello          ; Length of the 'Hello, world!' string
  
section .text
  global_start
  
_start:
  mov eax, 4        ;The system call for write (sys_write)
  mov ebx, 1        ;File descriptor 1 - standard output
  mov ecx,hello     ;Put the offset of hello in ecx
  mov edx,helloLen  ;helloLen is a constant, so we don't need to say
                    ; mov edx,[helloLen] to get its actual value
  int 80h           ;Call the kernel
  mov eax,1         ;The system call for exit (sys_exit)
  mov ebx,0         ;Exit with return "code" of 0 (no error)
  int 80h