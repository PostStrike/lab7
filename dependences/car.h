#include "transport.h"

#pragma once

class Car : public Transport {
public:
    Car(const char* name, const char* country_made) : Transport(name) {
        this->country_made = new char[strlen(country_made) + 1];
        std::strcpy(this->country_made, country_made);
    };

    Car(Car &car) : Transport(car) { //конструктор копирования
        if(this->country_made != nullptr) {
            delete[] this->country_made;
        }

        this->country_made = new char[strlen(car.country_made) + 1];
        std::strcpy(this->country_made, car.country_made);
    }

    Car& operator=(Car& car) { //оператор присваивания
        if(this->name != nullptr) {
            delete[] this->name;
        }
        
        this->name = new char[strlen(car.name) + 1];
        std::strcpy(this->name, car.name);

        if(this->country_made != nullptr) {
            delete[] this->country_made;
        }
        
        this->country_made = new char[strlen(car.country_made) + 1];
        std::strcpy(this->country_made, car.country_made);

        return *this;
    }

    virtual ~Car() {
        if(country_made != nullptr) {
            delete[] country_made;
        }
    }

    virtual void Show() {
        std::cout << name << ", страна производства: " << country_made << std::endl;
    }

protected:
    char* country_made = nullptr;
};