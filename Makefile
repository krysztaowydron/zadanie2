sciezka = ${HOME}/zadanie2

.PHONY: clean
.SUFFIXES: .c .o .a .so

vpath %.c src
vpath %.h include
vpath %.so lib
vpath %.a lib

main: main.o libV.so libP.a
	gcc -L${sciezka}/lib -Wl,-rpath=${sciezka}/lib -o $@ $< -lV -lP
	
%.o: %.c
	gcc -c $< -I ${sciezka}/include

libV.so: V.o
	mkdir ${sciezka}/lib
	gcc -shared -o lib/$@ $^
	
libP.a: P.o
	ar cr lib/$@ $^
	

	
clean:
	rm main *.o 
	rm -r lib
