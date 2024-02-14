standard = c++17
includes = -I/usr/local/Cellar/sfml/2.6.1/include -I.
libs = -L/usr/local/Cellar/sfml/2.6.1/lib
opts = -lsfml-graphics -lsfml-window -lsfml-system

output = main.app

main: main.cpp
	g++ --std=$(standard) ./*.cpp $(includes) -o $(output) $(libs) $(opts) && ./$(output)

clean:
	rm -rf ./$(output)
