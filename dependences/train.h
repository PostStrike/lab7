#include "transport.h"

#pragma once

class Train : public Transport {
public:
    Train(const char* name, int carriage) : Transport(name) {
        this->carriage = carriage;
    };

    Train(Train &train) : Transport(train) { //конструктор копирования
        this->carriage = train.carriage;
    }

    Train& operator=(Train& train) { //оператор присваивания
        if(this->name != nullptr) {
            delete[] this->name;
        }
        
        this->name = new char[strlen(train.name) + 1];
        std::strcpy(this->name, train.name);

        this->carriage = train.carriage;

        return *this;
    }

    virtual void Show() {
        std::cout << name << ", вагон: " << carriage << std::endl;
    }

protected:
    int carriage;
};