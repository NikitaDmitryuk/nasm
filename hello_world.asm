%include "stud_io.inc"
global _start

section .text
_start: mov eax, 0              ; Инициализируем счетчик
again: PRINT "Hello"            ; Печатаем Hello
  PUTCHAR 10                    ; Печатаем символ переноса строки
  inc eax                       ; Увеличиваем счетчик на единицу
  cmp eax, 5                    ; Сравниваем счетчик с 5
  jl again                      ; Если меньше 5, идем к метке again
  FINISH                        ; Системный вызов завершения процесса
