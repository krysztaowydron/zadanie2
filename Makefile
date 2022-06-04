main: main.o libV.so libP.a
	gcc -L/home/student/zadanie2 -Wl,-rpath=/home/student/zadanie2 -o main main.o -lV -lP
	
main.o:
	gcc -c -o main.o main.c 
	
libV.so: V.o
	gcc -shared -o libV.so  V.o
	
libP.a: P.o
	ar cr libP.a P.o
	
V.o:
	gcc -c -o V.o V.c
	
P.o:
	gcc -c -o P.o P.c
	
clean:
	rm main main.o libV.so libP.a V.o P.o
