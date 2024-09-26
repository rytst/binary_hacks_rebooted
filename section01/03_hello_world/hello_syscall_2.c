// Hello, World! by syscall
#include <sys/syscall.h>
#include <unistd.h>

int main()
{
    syscall( SYS_write, 1, "Hello, World!\n", 14);
    return 0;
}
