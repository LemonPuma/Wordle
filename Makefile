CC=gcc
FLAGS=-lcs50
MODE=$(firstword $(filter-out $@,$(MAKECMDGOALS)))


usage: 
	@echo "//	To run the game with desirable wordsize"
	@echo "//	simply type"
	@echo "//	make run <MODE>"
	@echo "//	where <MODE> is 5, 6, 7 or 8 for wordsize you want"
	@echo "//	Example: make run 5"

build: wordle.c
	$(CC) $(FLAGS) wordle.c -o wordle

run: wordle
	./wordle $(MODE)

clean: 
	rm -rf *.o

%:
	@:

.PHONY: build clean run






