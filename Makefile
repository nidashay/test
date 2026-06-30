CC ?= clang
output_file ?= server
LIBS ?= -luv
CFLAGS ?= -Wall -O2 $(LIBS)

default:
	@echo "[ OK ] Compiling server code..."
	@sleep 3
	@mkdir -p bin/
	@$(CC) server.c -o bin/$(output_file) $(CFLAGS)
	@echo "[ OK ] Done. Generated file [ $(output_file) ]"

clean:
	@echo "[ OK ] Cleaning..."
	@sleep 3
	@rm -rf *.o bin/
	@echo "[ OK ] Done..."
