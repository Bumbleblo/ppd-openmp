
workers=1
bits=16

compile: 
	@export OMP_NUM_THREADS=$(workers)
	gcc -o prog.out -I. -D NUM_WORKERS=$(workers) -D MODULO_NUM_BITS=$(bits) -fopenmp vow_with_hash.c

run:
	./prog.out 

clean:
	rm prog.out
