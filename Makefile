sciezka = ${HOME}/zadanie2

.PHONY: clean
.SUFFIXES: .c .o .a .so

main: main.o libV.so libP.a
	gcc -L${sciezka} -Wl,-rpath=${sciezka} -o $@ $< -lV -lP
	
.c.o:
	gcc -c $<
	
 .o:
	gcc -o $@ $^

libV.so: V.o
	gcc -shared -o $@ $^
	
libP.a: P.o
	ar cr $@ $^
	

	
clean:
	rm main main.o libV.so libP.a V.o P.o
