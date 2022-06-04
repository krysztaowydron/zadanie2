main: main.o libV.so libP.a
	gcc -L/home/student/zadanie2 -Wl,-rpath=/home/student/zadanie2 -o $@ $< -lV -lP
	
main.o:
	gcc -c -o $@ main.c 
	
libV.so: V.o
	gcc -shared -o $@ $^
	
libP.a: P.o
	ar cr $@ $^
	
V.o:
	gcc -c -o $@ V.c
	
P.o:
	gcc -c -o $@ P.c
	
clean:
	rm main main.o libV.so libP.a V.o P.o
