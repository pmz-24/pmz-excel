objs = main.o
flags = -Wall -Wextra -Wpedantic

pmzexcel: $(objs)
	gcc -o pmzexcel $(objs) -lncurses

%.o: %.c
	gcc -c $^ $(flags)

clear:
	rm -f $(objs) pmzexcel
