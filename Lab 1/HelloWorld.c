#include<stdio.h>

int main()
{
    int a,b,c;

    b=10;
    c=20;
    a = b+c;

    printf("a=%d",a);

}

/*
we have to compile this

go to terminal
type gcc "name"
./a

gcc -o name name.c // ei name compile hobe

Compilation STEPS
==================
1. gcc -E HelloWorld.c > hello.i // preproccess kore dibe
2. gcc -S -masm=intel HelloWorld.c or hello.i // assembly code generate
   gcc -S HelloWorld.i // original assembly

3. as -o HelloWorld.o HelloWorld.s  //Machine code
   objdump -M intel -d HelloWorld.o > HelloWorld.dump  //Machine code show in the object file/// Ekhaneo printf er defination asenai...but link kore dise

4. gcc -c -o HelloWorld.o HelloWorld.c // FUll object file ta make korbe...including prinf er defination shoho (Fails)

5. gcc HelloWorld.c
   objdump -M intel -d a.exe > HelloWorld.dump  // Full object file worked!!


   Makefile ///ekbar command lekhle bar bar use kora jai
   makefile er vitor cmd likhe then terminal e make command likhlei hobe


*/