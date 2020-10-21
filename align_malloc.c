#include <stdlib.h>
#include <unistd.h>

void *malloc(size_t size) {
    size_t page_size = sysconf(_SC_PAGESIZE);

    return aligned_alloc(page_size, size + (size % page_size));
}

