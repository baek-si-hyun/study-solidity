// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract lec6{
     uint256 public a = 1;
    
    function viewExample() public view returns(uint256){
        return a+2;
    }
    
    function readAndChangeA() public returns(uint256){
        a = 3;
        return a+2;
    } 
    
    function pureExample() pure public returns(uint256){
        uint256 a2 = 3;
        return a2+2;
    } 
}