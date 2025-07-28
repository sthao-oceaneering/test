# Goat Joke Assembly

This project contains a simple assembly program that prints a goat joke to the terminal.

## How to run

1. Assemble and link the program:
   ```bash
   nasm -f elf32 src/goat_joke.asm -o goat_joke.o
   ld -m elf_i386 goat_joke.o -o goat_joke
   ```

2. Run the program:
   ```bash
   ./goat_joke
   ```

## Joke

Why do goats never get lost?  
Because they always