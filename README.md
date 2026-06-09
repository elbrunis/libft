<div align="center">
  <h2 align="center">libft</h2>

  <p align="center">
    <strong>A ground-up reimplementation of the C standard library — including string, memory, character, I/O, and linked-list utilities — augmented with `get_next_line` and a custom `ft_printf`, all bundled into a single static library (`libft.a`).</strong>
    <br />
    <br />
    <a href="https://github.com/elbrunis/libft/issues">Report Bug</a>
    ·
    <a href="https://github.com/elbrunis/libft/issues">Request Feature</a>
  </p>

  <p align="center">
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
    <img src="https://img.shields.io/badge/Build-Passing-brightgreen.svg" alt="Build Status">
  </p>
</div>

## 📑 Table of Contents
- [✨ Key Features](#-key-features)
- [🛠 Tech Stack](#-tech-stack)
- [🚀 Getting Started](#-getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [💡 Usage](#-usage)
- [🗺 Roadmap](#-roadmap)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)

---

## ✨ Key Features
* **Character Classification & Conversion:** `ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isascii`, `ft_isprint`, `ft_toupper`, `ft_tolower`.
* **String Manipulation:** `ft_strlen`, `ft_strlcpy`, `ft_strlcat`, `ft_strdup`, `ft_strchr`, `ft_strrchr`, `ft_strnstr`, `ft_strncmp`, `ft_substr`, `ft_strjoin`, `ft_strtrim`, `ft_split`, `ft_itoa`, `ft_strmapi`, `ft_striteri`.
* **Memory Operations:** `ft_memset`, `ft_bzero`, `ft_memcpy`, `ft_memmove`, `ft_memchr`, `ft_memcmp`, `ft_calloc`.
* **File Descriptor Output:** `ft_putchar_fd`, `ft_putstr_fd`, `ft_putendl_fd`, `ft_putnbr_fd`.
* **Linked List Utilities:** `ft_lstnew`, `ft_lstadd_front`, `ft_lstadd_back`, `ft_lstsize`, `ft_lstlast`.
* **Bonus Modules:** `get_next_line` (line-by-line file reader) and `ft_printf` (custom `printf` clone with `%cspdiuxX%` support).

---

## 🛠 Tech Stack

| Category | Technologies |
| :--- | :--- |
| **Core** | C (C99/C11) |
| **Tools** | GNU Make, `ar` (archiver) |

---

## 🚀 Getting Started

Follow these instructions to set up the project locally.

### Prerequisites
* C compiler (`cc`, `gcc`, or `clang`)
* GNU `make`
* `ar` (part of `binutils`)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/elbrunis/libft.git
```

2. Build the library:
```bash
cd libft
make
```

This produces `libft.a` in the project root.

---

## 💡 Usage

Include the header and link the library in your own C projects:

```c
#include "libft.h"

int main(void)
{
    char **words = ft_split("hello world from libft", ' ');
    char  *dup   = ft_strdup("example");
    char  *line  = get_next_line(0);
    int    n     = ft_printf("Number: %d, Hex: %x\n", 42, 255);
    return (0);
}
```

**Compile:**
```bash
cc -I/path/to/libft -o my_program my_program.c -L/path/to/libft -lft
```

---

## 🗺 Roadmap

- [ ] Add `ft_lstiter`, `ft_lstmap`, `ft_lstdelone`, `ft_lstclear`
- [ ] Add `ft_printf` bonus flags (width, precision, `#`, `+`, space)

---

## 🤝 Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request.

---

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.
