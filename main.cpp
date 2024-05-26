#include <iostream>
#include "dependences/transport.h"
#include "dependences/car.h"
#include "dependences/train.h"
#include "dependences/express.h"

void test1() {
    Transport::on_create_adder = true;

    //1 режим
    Transport** arr = new Transport*[3];
    arr[0] = new Car("Мазда", "Германия");
    arr[1] = new Train("Пассажирский", 2);
    arr[2] = new Express("Стриж", 4, "askdlf");

    Transport::print();

    delete[] arr;
    delete[] Transport::transports;
}

void test2() {
    Transport::on_create_adder = false;

    //2 режим
    Transport** arr = new Transport*[3];
    arr[0] = new Car("Мазда", "Германия");
    arr[1] = new Train("Пассажирский", 2);
    arr[2] = new Express("Стриж", 4, "askdlf");

    //показываем, что ничего не выводится
    Transport::print();

    for(int i = 0; i < 3; ++i) {
        arr[i]->Add();
    }

    //теперь показываем, что выводится один раз, а прошлый не выводился
    Transport::print();

    delete[] arr;
    delete[] Transport::transports;
}

int main(int argc, char *argv[]) {
    setlocale(LC_ALL, "Russian");

    test1();
    //test2();

    return 0;
}