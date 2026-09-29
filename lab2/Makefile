# Головна мета — створити і бібліотеку, і програму
all: libcalculator.a calculator_app

libcalculator.a: calculator.o
	ar rcs libcalculator.a calculator.o

calculator.o: calculator.cpp calculator.h
	g++ -c calculator.cpp

calculator_app: main.cpp libcalculator.a
	g++ main.cpp -L. -lcalculator -o calculator_app

clean:
	rm -f *.o libcalculator.a calculator_app