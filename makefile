main:main.o linkstack.o
	gcc $^ -o $@

main.o:main.c linkstack.h
linkstack.o:linkstack.c linkstack.h

clean:
	@echo "cleanning the project"
	rm *.o
main:main.o linkstack.o
	gcc main.o linkstack.o -o main

main.o:main.c linkstack.h
	gcc -c main.c

linkstack.o:linkstack.c linkstack.h
	gcc -c linkstack.c

