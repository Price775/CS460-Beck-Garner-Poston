bgp: parser.y scanner.l
	bison -d -v -o parser.c parser.y
	flex -o scanner.c scanner.l
	g++ -o bgp -std=c++11 parser.c scanner.c node.cpp symbolTable.cpp -lfl

clean:
	rm parser.c parser.h scanner.c SymbolTableDump.txt LexDebugOutput.txt bgp
