//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

 //msg.sender - who made the last message call
    // msg.value - amount in wei sent
    // msg.data - calldata
    // msg.sig - the function identifier




// Solidity Addresses
// Let's talk about the address data type in Solidity!
// An address on the EVM is a 160 bits long, or a 40 character, hexadecimal string:
// address a = 0xc783df8a850f42e7f7e57013759c285caa701eb6;


//How do EOA's and Contracts call other Contracts

contract message{
    address deployer;
    address othercontract;
    constructor(address _othercontract){
        deployer=msg.sender;
        othercontract=_othercontract;
    }
}

// Only payable method calls receive ether

contract X{
    receive() external payable{
    // no calldata necessary here
    // just send a value on the message call

    }
    function pay() external payable{

    }
}

contract Contract {
	address public owner;
	address public charity;

	constructor(address _charity) {
		owner = msg.sender;
		charity = _charity;
	}

	receive() external payable { }

	function donate() public {
		// selfdestruct(payable(charity));
	}

	function tip() public payable {
		(bool success, ) = owner.call{ value: msg.value }("");
		require(success);
	}
}


