## 스마트 컨트랙트

- 미리 정의된 조건이 만족하면 블록체인 안에 저장된 프로그램이 작동하는 것

## REMIX

- 솔리디티를 사용하여 개발할때 사용하는 개발 툴 중 하나

## 첫 단계

- 솔리디티 라이센스를 맨 윗줄에 명시를 해주어야 에러가 나지 않는다.
- 세미콜론을 문장 끝에 붙여주여야 한다.

## 자료형

- bool: 참 또는 거짓
- bytes4: 크기를 명시
- bytes:크기를 알수 없는 문자열에 사용
- address: 20byte의 크기를 가지고 있음
- int: 음수를 포함한 -2의7승부터 2의7승 -1 까지의 수
- uint: 양수만 가능 2의8승 -1까지 가능
- int8, uint8: 위의 조건에서 크기를 명시

## 이더 단위와 가스

    1 ether = 1000000000 Gwei
    1 Gwei = 1000000000 wei

- 단위는 ether, Gwei, wei가 있다.

- ether: 이더리움의 기본 단위
- Gwei: 가스비를 계산 할때 주로 사용되는 단위이다.
- wei: 스마트계약에서 소수점을 다루기위해 사용되는 단위이다.

## 가스

- 스마트 컨트랙을 사용했을때 지불하는 비용을 가스라고 한다.
- 스마트 컨트랙의 길이가 길수록 가스비용이 증가한다.
- 디도스 같은 공격을 방어 할수도 있다.

## 함수

    function 이름() public { // (public,private,internal,external) 변경가능
        // 내용
    }

- 매개변수에 타입을 명시해줘야한다.
- 리턴 값이 필요한 경우 리턴 타입을 명시해줘야 한다.

        ex)
        function changeA3() public view returns(uint256){
            return a;
        }

## 접근 제어자

- public : 모든곳에서 접근 간으
- external : public 처럼 모든 곳에서 접근 가능하나, exteranal 이 정의된 자기자신의 스마트컨트랙 접근 불가
- private: 오직 private이 정의된 자기자신의 스마트컨트랙에서만 가능( private이 정의된 현재 이 컨트랙을 상속받은 자식 컨트랙도 접근불가)
- interal : private 처럼 오직 internal이 정의된 자기자신의 스마트컨트랙에서도 가능( internal이 정의된 현재 이 컨트랙을 상속받은 자식 컨트랙도 접근가능)

## 함수 상태 수정자

- view : function 밖의 변수들을 읽을수 있으나 변경 불가능
- pure : function 밖의 변수들을 읽지 못하고, 변경도 불가능
- viwe 와 pure 둘다 명시 안할때: function 밖의 변수들을 읽어서, 변경을 해야함.(이 정의된 현재 이 컨트랙을 상속받은 자식 컨트랙도 접근가능)

## 스토리지와 메모리

- storage : 대부분의 변수, 함수들이 저장되며, 영속적으로 저장이되어 가스 비용이 비싸요
- memory: 함수의 파라미터, 리턴값, 레퍼런스 타입이 주로 저장이 됩니다.
  그러나, storage 처럼 영속적이지 않고, 함수내에서만 유효하기에 storage보다 가스 비용이 싸답니다.
- Colldata : 주로 external function 의 파라메터에서 사용 됩니다.
- stack: EVM (Ethereum Virtual Machine) 에서 stack data를 관리할때 쓰는 영역인데 1024Mb 제한적입니다.(이 컨트랙을 상속받은 자식 컨트랙도 접근가능)

## String

    function get_string( string memory _str ) public pure returns( string memory ){
        return _str;
    }

- 문자열은 기본 타입이 아님으로 매개변수나 리턴 타입으로 사용할 때 memory를 적어줘야 한다.
- 기본타입들은 memory가 생략되어 있다.

## 인스턴스

    A a = new A();

- new 키워드를 붙여서 인스턴스를 생성한다.
- 인스턴스를 contract와 별개이다


## constructor

    constructor(string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }   

- contract가 처음 배포 될 시에 한번만 호출된다.
- contract의 초기 상태를 설정할 떄 사용된다.

### constructor와 funtion의 차이

- constructor는 contract의 초기상태를 설정할 떄 사용되지만 function은 contract가 배포된 이후 상태 변수를 변경하는데 사용된다.
- constructor는 contract가 배포될 때 자동으로 호출되지만 배포 후에는 다시 호출 할 수 없다. 하지만 fuction은 contract가 배포된 후 누구나 호출할 수 있다. 