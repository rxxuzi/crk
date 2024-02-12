#include <stdio.h>
#include <string.h>

int main(void) {
    char input[255];
    const char password[] = "key123";
    while (1) {
        printf("Enter the password: ");
        scanf("%254s", input);

        if (strcmp(input, password) == 0) {
            printf("Access Granted! You've entered the correct password.\n");
            break;
        } else {
            printf("Access Denied! Incorrect password, please try again.\n");
        }
    }
    return 0;
}
