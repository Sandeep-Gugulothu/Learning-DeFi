// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//basic Data Types
contract Example{
    uint a;  //storage slot-0x0
    int b;   //storage slot-0x1
    bool c;  //storage slot-0x2

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
    // Default value is False

}

//Enums
contract Enums{

     enum Foods { Apple, Pizza, Bagel, Banana }
        Foods public food1 = Foods.Apple;
        Foods public food2 = Foods.Pizza;
        Foods public food3 = Foods.Bagel;
        Foods public food4 = Foods.Banana;
    
}
