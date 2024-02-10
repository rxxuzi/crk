#include <stdio.h>
#include <string.h>

int main(void) {
    char userInput[255];

    printf("Enter the password: ");
    scanf("%254s", userInput);

    if (strcmp(userInput, "password123") == 0) {
        printf("Access Granted!\n");
    } else {
        printf("Access Denied! Wrong password.\n");
    }

    return 0;
}

