// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

// contract는 class와 비슷하다고 생각하면 된다.
contract lec4{
    /*
    function 이름() public { // (public,private,internal,external) 변경가능 
        // 내용
    }
    */
   
   uint256 public a = 3;

   //1. parameter 와 return 값이 없는 function 
   function changeA1() public{
       a = 5;
   }
   
   //2. parameter 값이 있는 function 
   function changeA2(uint256 _value) public{
       a = _value;
   }
   
   //3. return 값이 있는 function
   // view는 함수 수정자라고 불린다.
   // 변수의 값을 변경하지 않고 반환만 하는 경우, 즉 변경하지 않는 경우 view키워드를 사용해 변경할수 없다는 것을 명시해야한다.
   // view 키워드가 붙을 경우 블록체인에 기록이 남지 않기 때문에 이 함수를 호출 할 때 가스비를 지불하지 않아도 된다.
   function changeA3() public view returns(uint256){
       return a;
   }
   
   //4. parameter 와 return 값이 있는 function 
   function changeA4(uint256 _value) public returns(uint256){
       a = _value;
       return a;
   }
}