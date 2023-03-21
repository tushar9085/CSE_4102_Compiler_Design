all1:
	gcc -o HelloWorld HelloWorld.c
	objdump -M intel -d HelloWorld.exe > HelloWorld2.dump


hellomake.o: ./src/hellomake.c
	gcc -c -o ./lib/hellomake.o ./src/hellomake.c -I./include

hellofunc.o: ./src/hellofunc.c
	gcc -c -o ./lib/hellofunc.o ./src/hellofunc.c -I./include

hellomake: ./lib/hellofunc.o ./lib/hellomake.o
	gcc -o ./build/hellomake ./lib/hellomake.o ./lib/hellofunc.o