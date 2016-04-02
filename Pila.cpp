#include<iostream>
using namespace std;
class PilaArreglo{
private:
int *array;
size_t n,pos;
pubilc:
PilaArreglo(size_t num_elems=10){
n=num_elems;
array=new int[n];
pos=0;
}
void push(int x){
array[pos]=x;
pos++;
}
int pop(){
int ret=top();
pos--;
return ret;
}
int top(){
return array[pos-1];
}
bool empty(){
return size()==0;
}
size_t size(){
return pos;
}
};
