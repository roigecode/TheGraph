//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.4;

contract Exemple {
    event ValueAdded(uint256 indexed value, address addr);
    uint256 public value;
    address public addr;
    
    function setValue(uint256 _value, address _addr) public {
        value = _value;
        addr = _addr;
        emit ValueAdded(value, addr);
    }
    function getData() public view returns(uint256, address){
        return (value, addr);
    }
}