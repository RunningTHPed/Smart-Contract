// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MyContract{
    
    // define variable

    /*
    structure definition variable
    type access_modifier name;
    */

    bool status = false;
    string name = "TestUser";
    int amount = 5000;
    uint balance = 1000;

    // access modifier
    // private
    string _priname;
    uint _pribalance;

    // constructor
    constructor(string memory priname, uint pribalance){
        require(pribalance>0,"balance greater zero");
        _priname = priname;
        _pribalance = pribalance;
    }

    function getBalance() public view returns(uint pribalance){
        return _pribalance;
    }

    function deposite(uint amount) public{
        _pribalance += amount;
    }
}