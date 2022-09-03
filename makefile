FRONTEND: main.c
	gcc -E main.c -o main.i
MIDDLEEND: main.c
	gcc -S main.c -o main.s
BACKEND: main.c
	gcc -c main.c -o main.o
LINKER: main.c
	gcc -O main.c -o main.exe
BUILD: main.c
	make FRONTEND
	make MIDDLEEND
	make BACKEND
	make LINKER

Run: main.c
	.\main.exe 
Build_Run: main.c
	make BUILD
	make Run