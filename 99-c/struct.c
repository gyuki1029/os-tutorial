#include <stdio.h>
#include <string.h>

struct Person
{
    char name[50];
    int age;
    char gender;
};

int main(){
    struct Person person = { "○山×男", 20, 0 };

    printf(
        "name: %s\n"
        "age: %d\n"
        "gender: %d\n",
        person.name, person.age, person.gender
    );

    getchar();
}