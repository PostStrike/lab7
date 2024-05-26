#include <iostream>
#include <cstring>

#pragma once

class Transport;

void free_transports();
void add_element(Transport* new_el);

class Transport {
public:
    Transport(const char* name) {
        if(on_create_adder) {
            Add();
        }
    
        this->name = new char[strlen(name) + 1];
        std::strcpy(this->name, name);
    }

    virtual ~Transport() {
        if(name != nullptr) {
            delete[] name;
        }
    }

    Transport(Transport &t){ //конструктор копирования
        if(this->name != nullptr) {
            delete[] this->name;
        }
        
        this->name = new char[strlen(t.name) + 1];
        std::strcpy(this->name, t.name);
    }

    Transport& operator=(Transport& t){ //оператор присваивания
        if(this->name != nullptr) {
            delete[] this->name;
        }
        
        this->name = new char[strlen(t.name) + 1];
        std::strcpy(this->name, t.name);

        return *this;
    }

    static Transport** transports;
    static int size;
    static bool on_create_adder;
    static void print(void);

    virtual void Show() = 0;
    void Add() {
        Transport* new_el = this;
        if(transports == nullptr) {
            size++;
            transports = new Transport*[size];
            transports[size - 1] = new_el;
            return; 
        }

        Transport** new_transports = new Transport*[size + 1];

        for(int i = 0; i < size; ++i) {
            new_transports[i] = transports[i];
        }

        new_transports[size] = new_el;

        delete[] transports;
        transports = new_transports;
        size++;
    }

protected:
    char* name = nullptr;
};


Transport** Transport::transports = nullptr;
int Transport::size = 0;
bool Transport::on_create_adder = true;


void Transport::print() {
    for(int i = 0; i < size; ++i) {
        std::cout << i + 1 << ". ";
        transports[i]->Show();
    }
}

