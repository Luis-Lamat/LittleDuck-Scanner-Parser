all:
	bison -d parser.y
	flex scanner.l
	g++ parser.tab.c lex.yy.c -o Test
	./Test
