void function(int a) { 
	return a + 1; 
}  

void function2(int a, int b);  void main() {
	function(9);
	function2(1,2); 
}

// cl /Os /Fa .\ConsoleApplication1.c