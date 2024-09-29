// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//basic Data Types
contract Example{
    uint a;
    int b;
    bool c;

    enum Choice{Up,Down,Right,Left}
    Choice choice=Choice.Up;
}

//Integers and uints
contract Int{
    //number beside uint represents no.of bits
    uint8 x;
    uint16 z1;
// uint is an alias for uint256
        
}

//Booleans
contract Boolean{
    //either True or False

}

//Enums
contract Enums{
    enum Choice{Up,Down,Left,Right}
    constructor(Choice choice){
        if(choice==Choice.Up){
        }
    }
}