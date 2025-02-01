# ft_printf

#### ✅ [125/125]

`ft_printf` is a custom implementation of the C standard library function `printf`. This project is part of the 42 school curriculum, designed to deepen understanding of variadic functions, string formatting, and memory management in C.

## Table of Contents

- [Supported Conversions](#supported-conversions)
- [Bonus Features](#bonus-features)
- [Usage](#usage)
- [Compilation](#compilation)
- [Testers](#testers)
- [License](#license)

## Supported Conversions

- `%c` - Single character
- `%s` - String
- `%p` - Pointer address
- `%d` - Decimal (Base 10) integer
- `%i` - Integer in base 10
- `%u` - Unsigned decimal integer
- `%x` - Hexadecimal (base 16) lowercase
- `%X` - Hexadecimal (base 16) uppercase
- `%%` - Percentage sign

## Bonus Features Details

### Width Field

- Minimum field width specified with a number
- Right-justified by default
- Left-justified with `-` flag

### Precision

- Specified with a `.` followed by a number
- For strings: maximum number of characters to print
- For numbers: minimum number of digits to print

### Flags

- `-`: Left-justify within the given field width
- `+`: Force a plus sign before positive numbers
- ` `: (space) Leave a space before positive numbers
- `#`: Use alternate form (0x for hex, etc.)
- `0`: Zero-pad numbers to the specified width

## Usage

Include `ft_printf.h` in your project:

```c
#include "ft_printf.h"
```

Clone this repository inside your project directory:

```sh
git clone https://github.com/Eutrius/ft_printf.git
```

Modify your Makefile to use `ft_printf`:

```make
FT_PRINTF_PATH=ft_printf
FT_PRINTF=$(FT_PRINTF_PATH)/libftprintf.a
FT_PRINTF_FLAGS= -L$(FT_PRINTF_PATH) -lftprintf

CFLAGS = -Wall -Werror -Wextra -I$(FT_PRINTF_PATH)/include

$(NAME): $(FT_PRINTF) $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^ $(FT_PRINTF_FLAGS)

$(FT_PRINTF):
	$(MAKE) -C $(FT_PRINTF_PATH)

clean:
	$(RM) $(OBJECTS)
	$(MAKE) -C $(FT_PRINTF_PATH) clean

fclean:
    $(RM) $(OBJECTS)
	$(RM) $(NAME)
	$(MAKE) -C $(FT_PRINTF_PATH) fclean

```

## Compilation

To compile :

```sh
make
make all
make bonus
```

To clean object files:

```sh
make clean
```

To remove everything (including `libftprintf.a`):

```sh
make fclean
```

To recompile:

```sh
make re
```

## Testers

- https://github.com/Tripouille/printfTester.git ✅

## License

This project is part of the 42 curriculum and follows its academic policies.
