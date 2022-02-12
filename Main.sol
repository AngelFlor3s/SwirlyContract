//SPDX-License-Identifier: MIT
pragma solidity >= 0.4.0 <0.10.0;
contract SwirlyToken{
    string public constant coin = "SwirlyHouse";
    string public constant symbol = "SLY";
    uint public constant decimal = 18;
    // mapping {key:value}
    // address: 1000 GWTH
    mapping(address => uint) balances;
    // supply
    uint _Totalsupply;
    constructor(uint inputValue) {
        _Totalsupply = inputValue;
        // msg.sender => metamask address
        balances[msg.sender] = _Totalsupply;
    }
    // REQUIRED FUNCTION #1
    function Totalsupply() public view returns(uint) {
        return _Totalsupply;
    }
    // REQUIRED FUNCTION #2
    function balancesOf(address owner) public view returns(uint){
        return balances[owner];
    }

    function transfer(address recipient, uint amount) public returns (bool){
        if (balancesOf(msg.sender) >= amount) {
            balances[recipient] += amount;
            balances[msg.sender] -= amount;
            return true;
        }
        else {
            return false;
        }
    }
        function transferFrom(address sender, address recipient, uint amount) public returns (bool){
                if (balancesOf(sender) >= amount) {
                    balances[recipient] += amount;
                    balances[sender] -= amount;
                    return true;
                }
                else {
                    return false;
                }
        }
}