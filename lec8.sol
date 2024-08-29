// SPDX-License-Identifier:GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract A{
    
    uint256 public a = 5;
    
    function change(uint256 _value) public {
        a = _value;
    } 

}

contract B{
    
    A instance = new A();
    
    function get_A() public view returns(uint256) {
        // return instance.a(); 부분에서 a는 A 계약의 상태 변수이다. 하지만 public으로 선언된 상태 변수는 자동으로 getter 함수를 생성한다. 이 getter 함수는 a()와 같이 소괄호를 붙여서 호출해야 한다.
        return instance.a();
    }
    function change_A(uint256 _value) public  {
        instance.change(_value);
    }    

}