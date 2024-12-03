// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract Storage{
    uint256 constant a=55;//constants don't have any storage value
    uint256 b;     //storage value 0x0
    bool c= true;  // storage value 0x1
    constructor(){
        //sstore-store to some storage location
        //sload-read from some storage location
        uint x; //or bytes32 x;
        assembly{
            x:= sload(0x1)
        }
    }

}