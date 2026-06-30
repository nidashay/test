#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 1024


typedef struct{

    char* data;
    size_t len;

} StringView;

int main(void) {
    char str[MAX];

    printf("Enter some string: ");
    fgets(str, sizeof(str), stdin);
    //printf("\n");

    StringView sv = {
        .data = str,
        .len = strlen(str)
    };

    printf("\nYour stringview is: |%.*s|\n", sv.len, sv.data);    
    return 0;
}   
