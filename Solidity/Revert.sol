//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract Require {
    //short hand
   address owner= msg.sender;
   function OwnerOnly() external view{
    //Revert if not owner
    require(msg.sender==owner,"owneronly");
    //do what owner says
   }
}

//revert no state should happen 
//no value should be transferred
//gas is consumed
contract Revert{
    //@ non-privileged user attempted to access admin only method
    error Unauthorized();
    function adminOnly() external{
        if(!isAdmin(msg.sender)){
                    revert Unauthorized();

        }
    }
}//use assert with things that should not happen
contract Assert{
    function withdraw() external{
        uint balance=getBalance(msg.sender);
        sendBalance(msg.sender);

        assert(balance(msg.sender)==0);
    }
}


//Example
contract A{
    address b;
    constructor(address _b){
        b=_b;

    }
        function callB() external payable{
            (bool success, )=b.call{value:1 ether}("");
            require(success);

        }
    
}

contract B{
    //@thsi function should be never be paid
    error DoNotPayMe();
    receive() external payable{
        revert DoNotPayMe();
    }
}

contract exampletest{
    A public a;
    B public b;

    function Setup() public{
        b=new B();
        a=new A(address(b));
    }

    function test() public{
        a.callB{value:1.5 ether};
        assertEq(address(a).balance,.5 ether);
        assertEq(address(b).balance, 1 ether);
    }
}


//example 2
contract ex2{
    address owner;
    constructor() payable{
        owner=msg.sender;
        require(mag.value >=1 ether,"optional error message");
        
    }
    function Ownerpayable() public payable{
        require(owner==msg.sender);
        payable(msg.sender).transfer(address(this).balance);
            
    }
}
