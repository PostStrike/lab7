#include "train.h"

#pragma once

class Express : public Train {
public:
    Express(const char* name, int carriage, const char* access_token) : Train(name, carriage) {
        this->access_token = new char[strlen(access_token) + 1];
        std::strcpy(this->access_token, access_token);
    }

    Express(Express &expr) : Train(expr) { //конструктор копирования
        if(this->access_token != nullptr) {
            delete[] access_token;
        }

        this->access_token = new char[strlen(expr.access_token) + 1];
        std::strcpy(this->access_token, expr.access_token);
    }

    Express& operator=(Express& expr) { //оператор присваивания
        if(this->name != nullptr) {
            delete[] this->name;
        }
        
        this->name = new char[strlen(expr.name) + 1];
        std::strcpy(this->name, expr.name);

        this->carriage = expr.carriage;

        if(this->access_token != nullptr) {
            delete[] this->access_token;
        }

        this->access_token = new char[strlen(expr.access_token) + 1];
        std::strcpy(this->access_token, expr.access_token);

        return *this;
    }

    virtual ~Express() {
        if(access_token != nullptr) {
            delete []access_token;
        }
    }

    virtual void Show() {
        std::cout << name << ", вагон: " << carriage << ", ключ доступа: " <<  access_token << std::endl;
    }

protected:
    char* access_token = nullptr; 
};