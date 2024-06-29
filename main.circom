pragma circom 2.1.6;

include "circomlib/circuits/mux1.circom";
include "circomlib/circuits/comparators.circom";

template GoodExample() {
    signal input a;
    signal input b;
    signal output c;

    component eq1 = IsEqual();
    eq1.in[0] <== a;
    eq1.in[1] <== 1;

    component mux1 = Mux1();
    mux1.s <== eq1.out;
    mux1.c[0] <== b+5;
    mux1.c[1] <== b*b;

    c <== mux1.out;
}

component main = GoodExample();

/* INPUT = {
    "a": "1",
    "b": "77"
} */