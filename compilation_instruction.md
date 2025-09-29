# Summary of Compilation Instructions

1. Option
 
		ghc -o menu_pila Main.hs

1. Option
	
	    ghc --make Main.hs

	or

		ghc --make -o menu_pila  Main.hs

1. Option

		ghc -c -O Pila.hs Main.hs
		ghc -o menu_pila -O Pila.o Main.o
