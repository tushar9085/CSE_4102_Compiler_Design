main:
	flex prog1.l
	gcc lex.yy.c
	a

bison:
	bison -d prog1.y
	flex prog1.l
	gcc lex.yy.c prog1.tab.c
	a <input.txt
