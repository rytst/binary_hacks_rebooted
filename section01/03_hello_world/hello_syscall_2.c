// Hello, World! by syscall
#include <sys/syscall.h> // for SYS_write constant
#include <unistd.h>

int main()
{
    // write(1, "Hello, World!\n", 14);
    syscall( SYS_write, 1, "Hello, World!\n", 14);
}
