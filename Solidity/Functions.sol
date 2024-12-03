//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract FUNctions{
    function example1() private pure{
        //private : call me within this contract
        //pure: I cannot read and write from the storage
    }
    function example2() internal view{
        //internal : call me with only in this contract and ( inheritence)
        //view : I can view from storage but cannot write
    }
    function example3() public payable{
        //public : Can be called inside and out side the contract
        //send some ether
    }

    function example4() external{
        //external: Call outside the contract

    }
}

contract example{
    uint256 public sum;
    uint256 public product;
    constructor(uint256 x,uint256 y){
        (sum,product)=(math(x,y));
                        
    }
    function math(uint256 x,uint256 y) private pure returns(uint256,uint256){
        return(x+y,x*y);
    }

}
contract Contract {
	function double(uint x) public pure returns(uint) {
		return x * 2;
	}
	
	function double(uint a, uint b) external pure returns(uint, uint) {
		return (double(a), double(b));
	}
}
